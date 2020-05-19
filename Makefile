PROJECT=cv
PROJECT_ES=cv_es
CSS_STYLE=style/style.css
PANDOC_ARGS=--standalone --from markdown --to html --css $(CSS_STYLE)
WKHTMLTOPDF_ARGS=-L 25mm -R 25mm -T 25mm -B 25mm
HTML=index.html
HTML_ES=index_es.html
OUTDIR=_output
PDF_READER="xdg-open"


all: pdf

html: $(PROJECT).md $(CSS_STYLE) | $(OUTDIR)
	cp -rf style $(OUTDIR)
	pandoc $(PANDOC_ARGS) -o $(OUTDIR)/$(HTML) $<

pdf: html
	wkhtmltopdf $(WKHTMLTOPDF_ARGS) $(OUTDIR)/$(HTML) $(OUTDIR)/$(PROJECT).pdf

show: pdf
	$(PDF_READER) $(OUTDIR)/$(PROJECT).pdf 2> /dev/null

serve: html
	cd $(OUTDIR) && python -m http.server 8002

html_es: $(PROJECT_ES).md $(CSS_STYLE) | $(OUTDIR)
	cp -rf style $(OUTDIR)
	pandoc $(PANDOC_ARGS) -o $(OUTDIR)/$(HTML_ES) $<

pdf_es: html_es
	wkhtmltopdf $(WKHTMLTOPDF_ARGS) $(OUTDIR)/$(HTML_ES) $(OUTDIR)/$(PROJECT_ES).pdf

show_es: pdf_es
	$(PDF_READER) $(OUTDIR)/$(PROJECT_ES).pdf 2> /dev/null

clean:
	rm -rf $(OUTDIR)

$(OUTDIR):
	mkdir $(OUTDIR)
