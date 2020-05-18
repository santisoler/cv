PROJECT=cv
CSS_STYLE=style/style.css
PANDOC=pandoc
PANDOC_ARGS=--standalone --from markdown --to html --css $(CSS_STYLE)
HTML=index.html
OUTDIR=_output
PDF_READER="xdg-open"


all: pdf

pdf: $(PROJECT).md $(CSS_STYLE) | $(OUTDIR)
	$(PANDOC) $(PANDOC_ARGS) -o $(OUTDIR)/$(PROJECT).pdf $<

show: pdf
	$(PDF_READER) $(OUTDIR)/$(PROJECT).pdf 2> /dev/null

html: $(PROJECT).md $(CSS_STYLE) | $(OUTDIR)
	cp -rf style $(OUTDIR)
	$(PANDOC) $(PANDOC_ARGS) -o $(OUTDIR)/$(HTML) $<

serve: html
	cd $(OUTDIR) && python -m http.server 8002

clean:
	rm -rf $(OUTDIR)

$(OUTDIR):
	mkdir $(OUTDIR)
