from flask import Flask

from test_proj.example import get_example_blueprint


def create_app() -> Flask:
    app = Flask(__name__)
    app.register_blueprint(get_example_blueprint())
    return app
