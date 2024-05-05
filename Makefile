SHELL := /usr/bin/env zsh

VENV_NAME ?= venv
PORT      ?= 8888

env:
	python -m venv $(VENV_NAME)

install:
	pip install -r requirements.txt

start-jupyter:
	jupyter lab --port $(PORT)

add-to-jupyter:
	python -s -m ipykernel install --user --name $(VENV_NAME)

remove-from-jupyter:
	jupyter kernelspec uninstall $(VENV_NAME)


