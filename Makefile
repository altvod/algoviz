PACKAGE_NAME = algoviz


build_doc:
	rm -rf docs/apidoc
	sphinx-apidoc --no-toc --separate -o docs/apidoc ${PACKAGE_NAME}
	cd docs; make html


doc: build_doc
	xdg-open docs/_build/html/index.html


test:
	PACKAGE_NAME=${PACKAGE_NAME} tox


build:
	python setup.py sdist upload
