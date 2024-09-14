SHELL := env PYTHON_VERSION=3.12 /bin/bash
PYTHON_VERSION ?= 3.12
.SILENT: run devinstall install test lint format

setup:
	curl -LsSf https://astral.sh/uv/install.sh | sh

install:
	uv sync --frozen --no-dev

devinstall:
	uv python pin $(PYTHON_VERSION)
	uv add pytest ruff mypy --dev
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
