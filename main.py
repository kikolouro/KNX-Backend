from re import T
from flask import Flask, request, render_template, send_from_directory, redirect
app = Flask(__name__, template_folder='html')
app.config.update(TEMPLATES_AUTO_RELOAD = True)


@app.route('/')
def root():
    return "root folder"