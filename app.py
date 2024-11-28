"""Simple API developed in Flask"""
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def welcome():
    """Return welcome message in root path"""
    return 'Welcome to the jungle!'

if __name__ == ('__main__'):
    app.run(host='0.0.0.0', port=5000)
