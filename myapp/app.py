#!/bin/env python

from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('base.html')

def main():
    app.run(host='0.0.0.0', port=80)

if __name__ == '__main__':
    main()
