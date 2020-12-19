TEX := pdflatex

OUT ?= build

.PHONY: all clean build

all: clean build
build: $(OUT)/resume.pdf

$(OUT)/resume.pdf: clean
	mkdir -p $(OUT)
	$(TEX) -output-directory=$(OUT) resume.tex

clean:
	rm -fr $(OUT)