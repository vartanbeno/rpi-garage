#!/usr/bin/env python3

import os

from dotenv import load_dotenv
from flask import Flask, request
from flask_cors import CORS
from time import sleep
import RPi.GPIO as GPIO

load_dotenv(verbose=True)

app = Flask(__name__)
CORS(app, resources={r'*': {'origins': '*'}})

port = os.getenv('PORT')
password = os.getenv('PASSWORD')

DOOR_PINS = {
    'LEFT': 2,
    'RIGHT': 3
}


def toggle_door(which_door):
    pin = DOOR_PINS[which_door]
    GPIO.setmode(GPIO.BCM)
    GPIO.setup(pin, GPIO.OUT)
    GPIO.output(pin, GPIO.HIGH)
    GPIO.output(pin, GPIO.LOW)
    sleep(0.3)
    GPIO.cleanup()


@app.route('/', methods={'POST'})
def open_garage_door():
    data = request.get_json()
    if 'password' in data and data['password'] == password:
        if 'door' not in data or ('door' in data and data['door'] not in DOOR_PINS):
            return 'Must specify valid door.', 400
        try:
            toggle_door(data['door'])
            return 'OK', 200
        except Exception as e:
            GPIO.cleanup()
            return str(e), 500
    else:
        return 'Unauthorized.', 401


app.run(host='0.0.0.0', port=port)
