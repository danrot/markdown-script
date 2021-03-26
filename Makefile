MARKDOWN_SCRIPT_DIR=.
all:
	pandoc\
	    --standalone\
	    --toc\
	    --number-sections\
	    --filter pandoc-crossref\
	    -M codeBlockCaptions=true\
	    -M listings=true\
	    --listings\
	    --citeproc\
	    --csl ${MARKDOWN_SCRIPT_DIR}/iso690-numeric-en.csl\
	    --bibliography sources.bib\
	    -V links-as-notes=true\
	    -V geometry:margin=2cm\
	    -V lof\
	    -o script.pdf\
	    script.md\
	    ${MARKDOWN_SCRIPT_DIR}/bibliography.md
