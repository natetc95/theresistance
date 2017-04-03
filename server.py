import subprocess
import sys
from bottle import *

@route('/py/login',method = 'POST')

def process():
    return request.forms.get('A')

@route('/initialdata', method = 'POST')
def submitplayers():
    global players
    players = int(request.forms.get('players'))
    redirect('1/captain')

@route('/', method = 'GET')
@route('/<type>', method = 'GET')
@view('./page/start')
def home(type=None):
    if type == 'js':
        return static_file('scrotum.js', './page/')
    elif type == 'css':
        return static_file('style.css', './page/')
    return dict()

@route('/<nround>/<type>', method = 'GET')
@view('./page/index')
def ingamedisplay(nround, type):
    if not players:
        redirect('/');
    if type == 'js':
        return static_file('scrotum.js', './page/')
    elif type == 'css':
        return static_file('style.css', './page/')
    elif type == 'captain':
        return dict(name = 'Comrade', num = int(players), roundn = int(nround), cap = 'Please choose a captain!')
    elif type == 'selection':
        return dict(name = 'Comrade', num = int(players), roundn = int(nround), cap = 'Please choose selected members!')
    elif type == 'voting':
        return dict(name = 'Comrade', num = int(players), roundn = int(nround), cap = 'Please show votes!')
    else:
        return dict(name = 'Comrade', num = int(players), roundn = int(nround))

@route('/page/<page>', method = 'GET')
def greet(page):
    return static_file(page, './page/')

run(host='localhost', port=8080, debug=True)