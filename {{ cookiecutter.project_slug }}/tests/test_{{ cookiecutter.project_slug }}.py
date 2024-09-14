from {{ cookiecutter.project_slug }}.app import app


def test_app():
    app()
