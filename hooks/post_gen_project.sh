#!/usr/bin/env bash
OUTPUT=$(uv version 2>&1)
if [ $? -ne 0 ]; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

uv python pin "{{ cookiecutter.python_version }}"
uv add pytest ruff mypy --dev
