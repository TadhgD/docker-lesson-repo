#setup:
#	python3 -m venv ~/.docker-lesson-repo
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
#test:
#	python -m pytest -vv --cov=myrepolib tests/*.py
#	python -m pytest --nbval notebook.ipynb
	
lint:
	pylint --disable=R,C docker-lesson.py
	
all: install lint test