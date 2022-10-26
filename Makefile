MARKDOWN_SCRIPT_DIR=.
all:
	pandoc\
		--standalone\
		--embed-resources\
		--toc\
		--number-sections\
		--filter pandoc-crossref\
		-M codeBlockCaptions=true\
		-M listings=true\
		--listings\
		--citeproc\
		--csl ${MARKDOWN_SCRIPT_DIR}/fachhochschule-vorarlberg-author-date.csl\
		--bibliography sources.bib\
		-o script.html\
		script.md\
		${MARKDOWN_SCRIPT_DIR}/bibliography.md
