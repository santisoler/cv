PROJECT=cv
PROJECT_ES=cv_es
CSS_STYLE=style/style.css
HTML_TEMPLATE=style/template.html
CURRENT_DATE="$(shell LANG="en_EN" && date "+%B %Y")"
PANDOC=pandoc
PANDOC_ARGS=--standalone --from markdown --to html5 --css $(CSS_STYLE) --metadata date=$(CURRENT_DATE) --template $(HTML_TEMPLATE)
HTML=index.html
OUTDIR=_build
PDF_READER="xdg-open"


all: pdf

pdf: $(PROJECT).md $(CSS_STYLE) | $(OUTDIR)
	$(PANDOC) $(PANDOC_ARGS) -o $(OUTDIR)/$(PROJECT).pdf $<

show: pdf
	$(PDF_READER) $(OUTDIR)/$(PROJECT).pdf 2> /dev/null

pdf_es: $(PROJECT_ES).md $(CSS_STYLE) | $(OUTDIR)
	$(PANDOC) $(PANDOC_ARGS) -o $(OUTDIR)/$(PROJECT_ES).pdf $<

show_es: pdf_es
	$(PDF_READER) $(OUTDIR)/$(PROJECT_ES).pdf 2> /dev/null

html: $(PROJECT).md $(CSS_STYLE) | $(OUTDIR)
	cp -rf style $(OUTDIR)
	touch $(OUTDIR)/.nojekyll
	$(PANDOC) $(PANDOC_ARGS) -o $(OUTDIR)/$(HTML) $<

serve: html
	cd $(OUTDIR) && python -m http.server 8002

clean:
	rm -rf $(OUTDIR)

$(OUTDIR):
	mkdir $(OUTDIR)
