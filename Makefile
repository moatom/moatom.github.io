.PHONY: all build check publish clean
.SUFFIXES: .md .html


PANDOC=pandoc -V fontsize=14pt --template=moatom.html --css=style.css
SRCS=\
	oss.md \
	research.md \
	index.md
# $(wildcard ./blog/*.md) \
# $(wildcard ./article/*.md) \
# posts.md \

all: build check

./blog/*.html: ./blog/*.md
./article/*.html: ./article/*.md
research.html: pl.bib sec.bib research.md
index.html: biblio.bib index.md
*.html: *.md

.md.html:
	$(PANDOC) --mathjax --lua-filter=multibib.lua --lua-filter=boldname.lua \
						--csl=acm-sig-proceedings-long-author-list \
						--toc --number-sections \
						-M date="$(shell date +%Y-%m-%d%n)" --lua-filter=date.lua \
						--standalone $< -o $@
# $(PANDOC) --citeproc --csl=acm-sig-proceedings-long-author-list \
# 					--toc --number-sections \
# 					-M date="$(shell date +%Y-%m-%d%n)" --lua-filter=date.lua \
# 					--standalone $< -o $@

build: $(SRCS:.md=.html)
# sed -i'.backup' s@'Kobayashi, T.'@'<b>Kobayashi, T.</b>'@g index.html
# pandoc --citeproc mybib.md --csl=acm-sig-proceedings-long-author-list >> index.html


dev-open:
	code ~/.pandoc/templates/moatom.html


check:
	open index.html


publish:
	git push origin master
	open https://moatom.github.io/profile/
	open https://github.com/moatom/profile

# new-blog:
# 	code ./blog/$(shell date +%Y-%m-%d%n).md

clean:
	-rm *.html
	-rm *.bib.*
	-rm ./blog/*.html
	-rm ./article/*.html

filters:
	open  ~/.pandoc/filters

install:
	mkdir -p ~/.pandoc/filters
	mkdir -p ~/.pandoc/templates
	cp -rf static/pandoc/ ~/.pandoc/
