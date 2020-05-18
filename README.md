# Curriculum Vitae

Sources for building my academic CV.

## Using Markdown for my CV

I used to create my CV through LaTeX, using the `moderncv` template.
I like how it looks, although I always felt uncomfortable with it:

- I have always had hard time when trying to customize it a little bit to make
  it different to other CVs.
- Updating my CV is not a pleasant task (it's quite routinely and boring), and
  `moderncv` wasn't making it easier or less boring.
- I always forgot which `cventry` braces I regularly use, which leads into an
  annoying try-and-error process or rereading `moderncv` documentation.
- Needing a whole LaTeX distribution just for creating a few sheets document
  seems too much, specially when compiling on Continuous Integration services.

So I decided to find some alternative way to build my CV.
I wanted to be **simple**: simple to write, simple to build, simple to update.
My first thought was: why not to use Markdown instead of LaTeX?


Obviously, this was already though:
[elipapa/markdown-cv](https://elipapa.github.io/markdown-cv/) is a very
interesting project.
I like it very much, although it's more intended to create html versions of the
CV, while generating the PDF needs to first serve the website, what seemed too
much for my needs.

Then I stumbled upon
[this blog entry](https://blog.chmd.fr/editing-a-cv-in-markdown-with-pandoc.html)
that shows how to create a good looking CV with Markdown and just a single CSS file
through `pandoc`. This is very **simple**, although again, no PDF...

And finally I found [this blog
entry](https://tuxtor.shekalug.org/creando-un-curriculum-con-markdown-pandoc-y-wkhtmltopdf/)
that shows how to use `wkhtmltopdf` to convert the html version of the CV to
a PDF. Awesome, this is what I want!

Nowadays there's no neeed to convert to html with `pandoc` and then to PDF with
`wkhtmltopdf`: `pandoc` is able to use `wkhtmltopdf` under the hood, so we can
make the conversion on a single line.

For example:
```bash
pandoc --standalone --css style.css --from markdown --to html -o cv.pdf cv.md
```

Moreover, I can still generate a html version of my CV in case I want to
publish it as a website.


## How to build

I recommend using the `Makefile` for building the CV.

Requirements:
- `make`
- `pandoc`
- `wkhtmltopdf`
- `python` (if you want to serve the html file locally)

For creating the PDF:

```
make pdf
```

For creating the html version:
```
make html
```
