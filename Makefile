all : abstract.pdf abstract.docx README.md

abstract.docx abstract.pdf : abstract.md
	pandoc -S abstract.md -o abstract.docx

abstract.pdf : abstract.md
	pandoc --template template.latex abstract.md -o abstract.pdf

README.md : abstract.md
	pandoc -t markdown_github abstract.md -o README.md

clean :
	rm abstract.pdf abstract.docx README.md
