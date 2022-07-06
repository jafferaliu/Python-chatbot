install:
	pip install --upgrade pip && pip install -r requriments.txt

test:
	pythom -m pytest -vvv test_*.py

format:
	black *.py

lint:
	pylint --disable=R,C *.py

all:
	install test format lint