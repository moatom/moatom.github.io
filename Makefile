.PHONY: all build check clean

all: build check

build:
	pandoc --standalone index.md -o index.html
	pandoc --citeproc mybib.md >> index.html

check:
	open index.html

clean:
	rm a.html a.md
