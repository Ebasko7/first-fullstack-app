from flask import Flask, jsonify
from model import subjects, instructors, db
from flask_cors import CORS

app = Flask('server')
CORS(app)

app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql+psycopg://ericbaskovich:@localhost:5432/landing_page'

db.init_app(app)

@app.route('/api/v1/subjects/')
def get_subjects():
    subject_data = [sub.to_dict() for sub in subjects.query.all()]
    subject_data.sort(key= lambda x: x['difficulty_level'])
    return jsonify(subject_data)

@app.route('/api/v1/instructors/')
def get_instructors():
    instructor_data = [inst.to_dict() for inst in instructors.query.all()]
    instructor_data.sort(key=lambda x: x['age'])
    return jsonify(instructor_data)


app.run(debug= True, port=8000)