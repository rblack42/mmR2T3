.PHONY: html
html:	## run sphinx to generate html pages
	cd book && \
		sphinx-build -b html -d _build/doctrees . ../docs
spclean:	## clean for fresh sphinx build
	rm -f book/rst/_build
