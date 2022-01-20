# Generate PDFs from the Markdown source files
#
# Inspired by https://gist.github.com/bertvv/e77e3a5d24d8c2a9bcc4

# Directory containing source (Markdown) files
source := src

# Directory containing pdf files
output := build

# All markdown files in src/ are considered sources
sources := $(wildcard $(source)/*.md)

# Convert the list of source files (Markdown files in directory src/)
# into a list of output files (PDFs in directory print/).
objects := $(patsubst %.md,%.pdf,$(subst $(source),$(output)/pdf,$(sources)))

all: $(objects)

# Recipe for converting a Markdown file into PDF using Pandoc
$(output)/pdf/%.pdf: $(source)/%.md
	mkdir -p $(output)/pdf
	pandoc \
		--table-of-contents \
		--number-sections \
		--template=.pandoc/templates/default.latex \
		-f markdown  $< \
		-o $@

.PHONY : clean

clean:
	rm -rf $(output)/
