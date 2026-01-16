from flask import Flask
from flask import requests
from flask import render_template

ev2 = Flask(__name__)

@sample.route("/")
def main():
	return render_template("index.html")

if __name__ == "__main__":
	eva2.run(host="0.0.0.0", port=8080)
