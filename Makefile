.PHONY: venv install-ci install build lint test clean


venv:
	python3 -m venv env

install:  venv
	. env/bin/activate; \
	python -m pip install --upgrade pip; \
	pip install -r requirements.txt; \

lint:
	. env/bin/activate; pylint mypackage/
	. env/bin/activate; pydocstyle mypackage/

test:
	. env/bin/activate; \
	pytest tests/ 

clean:
	rm -rf env
