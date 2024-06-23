from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class subjects(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(25))
    difficulty_level = db.Column(db.Integer)
    description = db.Column(db.String(255))

    def to_dict(self):
        return {
            'id': self.id,
            'title': self.title,
            'difficulty_level': self.difficulty_level,
            'description': self.description
        }

class instructors(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(50))
    last_name = db.Column(db.String(50))
    age = db.Column(db.Integer)
    description = db.Column(db.String(255))

    def to_dict(self):
        return {
            'id': self.id,
            'first_name': self.first_name,
            'last_name': self.last_name,
            'age': self.age,
            'description': self.description 
        }

    