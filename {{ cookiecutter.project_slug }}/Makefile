SHELL := env PYTHON_VERSION={{ cookiecutter.python_version }} /bin/bash
PYTHON_VERSION ?= {{ cookiecutter.python_version }}
.SILENT: run devinstall install test lint format

install:
	uv sync --frozen --no-dev

devinstall:
	uv sync --frozen

test:
	uv run pytest

lint:
	echo "Running ruff..."
	uv run ruff check
	echo "Running mypy..."
	uv run mypy .

format:
	uv run ruff format

run:
	uv run src/{{ cookiecutter.project_slug }}/cli.py
