.PHONY: cheatsheet

TEX = xelatex
RM = rm -rvf
BUILD_DIR = build
BUILD_FILES = $(shell find $(BUILD_DIR) -not -name '*.tex')

cheatsheet: $(foreach x, cheatsheet, $x.pdf)

cheatsheet.pdf:	cheatsheet.tex $(BUILD_FILES)
	$(TEX) -output-directory=$(BUILD_DIR) $<

clean:
	$(RM) $(BUILD_DIR)/*.log
	$(RM) $(BUILD_DIR)/*.aux
	$(RM) $(BUILD_DIR)/*.out
