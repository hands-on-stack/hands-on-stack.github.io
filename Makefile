.SUFFIXES:	.rst .html

.rst.html:
	landslide -r -i -d $@ $<

SRCS = $(wildcard *.rst)
HTML = $(patsubst %.rst, %.html, $(SRCS))

all:	$(HTML)

clean:
	$(RM) $(HTML)
