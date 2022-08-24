# Step 1. Create Virtual Environment => * python -m venv env
# Step 2. Activate Virtual Environment => * source env/bin/activate (For Mac) | * .\env\Scripts\activate (For Windows)
# Step 3. pip install -r requirements.txt
# Step 4. Tensorflow might not run on local
# 
# To push changes
# Step 1. pip freeze > requirements.txt (If added any dependancies)
# Step 2. Git add and commit to repo
# Step 3. Git heroku push main

from flask import Flask,jsonify


app = Flask(__name__)

@app.route("/")
def hello():
    return "The Recommender system is working!"
