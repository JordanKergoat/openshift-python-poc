from flask import Flask
import environ

app = Flask(__name__)


@app.route('/')
def home():
  return f"Hello new app : {os.environ['APP_NAME']}", 200
