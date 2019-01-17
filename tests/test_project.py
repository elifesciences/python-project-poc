from test_proj import create_app


def test_logging() -> None:
    app = create_app()
    client = app.test_client()
    response = client.get('/')
    assert response.data == b'Hello World!'
