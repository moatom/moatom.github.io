.PHONY: all build check publish clean

all: build check

build:
	pandoc --standalone index.md -o index.html
	pandoc --citeproc mybib.md --csl=acm-sig-proceedings-long-author-list >> index.html
	sed -i'.backup' s@'Kobayashi, T.'@'<b>Kobayashi, T.</b>'@g index.html

check:
	open index.html

publish:
	git push origin master
	open https://moatom.github.io/profile/
	open https://github.com/moatom/profile

clean:
	rm index.html
