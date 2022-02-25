PROJECT=cv
OUTDIR=_output
LATEX=latexmk
LATEX_ARGS=-xelatex -outdir=$(OUTDIR)
PDF_READER="xdg-open"

.PHONY: all clean show

all: $(OUTDIR)/$(PROJECT).pdf

show: all
	$(PDF_READER) $(OUTDIR)/$(PROJECT).pdf 2> /dev/null

clean:
	rm -rf $(OUTDIR)

$(OUTDIR)/$(PROJECT).pdf: $(PROJECT).tex | $(OUTDIR)
	$(LATEX) $(LATEX_ARGS) $<

$(OUTDIR):
	mkdir -p $(OUTDIR)
