.ONESHELL:
.DEFAULT_GOAL := help
# Need to specify bash in order for bash syntax to work properly.
SHELL=/bin/bash
VENV = venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip
PIP_COMPILE = $(VENV)/bin/pip-compile


# target: help - Display callable targets.
.PHONY: help
help:
	@egrep "^# target:" [Mm]akefile

.PHONY: setup
# target: setup - Create python virtual environment
setup:
	python3 -m venv venv
	$(PIP) install -U pip setuptools pip-tools

.PHONY: install
# target: install - install dependencies from requirements.txt
install:
	$(PIP) install -r python-script/requirements.txt

# target: freeze - Compile dependencies from requirements.in and generate requirements
.PHONY: freeze
freeze:
	cd python-script && ../$(PIP_COMPILE) requirements.in -o requirements.txt --resolver=backtracking --verbose

.PHONY: clean
# target: clean - Delete all compiled Python files
clean:
	cd python-script && find . -type f -name "*.py[co]" -delete
	cd python-script && find . -type d -name "__pycache__" -delete
	cd python-script && rm -f .make.*

