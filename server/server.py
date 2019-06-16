#!/usr/bin/env python3

import os

from dotenv import load_dotenv
from flask import Flask, request
from flask_cors import CORS

load_dotenv(verbose=True)

app = Flask(__name__)
CORS(app, resources={fr'*': {'origins': '*'}})

port = os.getenv('PORT')
password = os.getenv('PASSWORD')


@app.route('/', methods={'POST'})
def auth():
    data = request.get_json()
    if 'password' in data and data['password'] == password:
        return 'OK', 200
    else:
        return 'Unauthorized', 401


app.run(host='0.0.0.0', port=port)
