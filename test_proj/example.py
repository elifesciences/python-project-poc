from flask import Blueprint


def get_example_blueprint() -> Blueprint:
    example = Blueprint('example', __name__)

    @example.route('/')
    def hello() -> str:  # pylint: disable=unused-variable
        return "Hello World!"

    return example
