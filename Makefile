.PHONY: build run clean

VENV := .venv
PYTHON := $(VENV)/bin/python
PIP := $(VENV)/bin/pip

build:
	@test -d $(VENV) || python3 -m venv $(VENV)
	@$(PIP) install -U pip
	@$(PIP) install -U discord.py

run: build
	@$(PYTHON) ./src/main.py

clean: build
	@rm -rf $(VENV)
