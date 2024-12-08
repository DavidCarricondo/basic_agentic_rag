install: 
	poetry install 
lint: 
	pylint --disable=R,C main.py
test: 
	python -m pytest -vv --cov=hello test_hello.py
env_install:
	if [ ! -d ".venv" ]; then \
		python3 -m venv .venv; \
		source .venv/bin/activate; \
		poetry install; \
	fi
	python -m ipykernel install --user --name .venv --display-name "basic-agentic-rag"