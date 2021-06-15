from flask import Flask , render_template , request
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail
import json
from datetime import datetime

with open('config.json', 'r') as c:
    params = json.load(c)["params"]

app = Flask(__name__)
app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = params['gmail'],
    MAIL_PASSWORD = params['password']
    )
mail = Mail(app)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/tfs'
db = SQLAlchemy(app)

class Contact(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    subject = db.Column(db.String(120), unique=True, nullable=False)
    msg = db.Column(db.String(120), unique=True, nullable=False)
    date = db.Column(db.String(120), unique=False, nullable=True)
class Post(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), unique=True, nullable=False)
    content = db.Column(db.String(120), unique=True, nullable=False)
    imgfile = db.Column(db.String(120), unique=True, nullable=False)
    date = db.Column(db.String(120), unique=False, nullable=True)
@app.route("/",methods =['GET','POST'])
def index():
    post = Post.query.filter_by().all()[-1:]
    if(request.method=='POST'):
        name = request.form.get('name')
        email = request.form.get('email')
        subject = request.form.get('subject')
        message = request.form.get('message')
        entry = Contact(name=name , email=email,subject=subject,msg=message,date=datetime.now())
        db.session.add(entry)
        db.session.commit()
        mail.send_message('New message from tfs by '+ name ,
                          sender = email,
                          recipients = [params['gmail']],
                          body = message
                          )
    
    return render_template('index.html',post=post )



app.run(debug=True)