from flask import Flask


def create_app() -> Flask:
    app = Flask(__name__)

    @app.route("/")
    def hello() -> str:  # pylint: disable=unused-variable
        return "Hello World!"

    return app
