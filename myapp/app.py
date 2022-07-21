#!/bin/env python

from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Web App with Python Flask!'

def main():
    app.run(host='0.0.0.0', port=5000)

if __name__ == '__main__':
    main()
