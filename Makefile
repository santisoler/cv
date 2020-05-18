PROJECT=cv
CSS_STYLE=style/style.css
PANDOC=pandoc
PANDOC_ARGS=--standalone --from markdown --to html --css $(CSS_STYLE)
HTML=index.html
OUTDIR=_output


all: pdf

pdf: $(PROJECT).md $(CSS_STYLE) | $(OUTDIR)
	$(PANDOC) $(PANDOC_ARGS) -o $(OUTDIR)/$(PROJECT).pdf $<

show: pdf
	open $(OUTDIR)/$(PROJECT).pdf 2> /dev/null

html: $(PROJECT).md $(CSS_STYLE) | $(OUTDIR)
	$(PANDOC) $(PANDOC_ARGS) -o $(OUTDIR)/$(HTML) $<

serve: html
	cd $(OUTDIR) && python -m http.server 8002

$(OUTDIR):
	mkdir $(OUTDIR)
