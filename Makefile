deps:
	pip install cookiecutter

build: ## builds a project out with no tempalte
	cookiecutter --no-input . --overwrite-if-exists