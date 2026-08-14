# Makefile for LaTeX Resume

# Configuration
MAIN = main
SRC_DIR = src
OUT_DIR = output
LATEXMK = latexmk
FLAGS = -pdf -interaction=nonstopmode -halt-on-error -output-directory=$(OUT_DIR)

.PHONY: all clean watch

# Default target
all: $(OUT_DIR)
	$(LATEXMK) $(FLAGS) $(SRC_DIR)/$(MAIN).tex

# Create output directory if it doesn't exist
$(OUT_DIR):
	mkdir -p $(OUT_DIR)

# Continuous preview (watches for changes)
watch: $(OUT_DIR)
	$(LATEXMK) $(FLAGS) -pvc $(SRC_DIR)/$(MAIN).tex

# Clean up auxiliary files
clean:
	$(LATEXMK) -C -output-directory=$(OUT_DIR)
	rm -rf $(OUT_DIR)
