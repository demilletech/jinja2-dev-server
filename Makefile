all: clean package upload

package:
	python3 setup.py sdist bdist_wheel

upload:
	twine upload dist/*

clean:
	rm -rf dist
	rm -rf build
	rm -rf jinja2_dev_server.egg-info