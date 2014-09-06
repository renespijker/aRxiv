all: doc notes

notes: inst/doc/arxiv_api.html

inst/doc/arxiv_api.html: inst/doc/src/arxiv_api.md
	R -e 'library(markdown);markdownToHTML("$<", "$@")'

doc:
	R -e 'library(devtools);document()'
