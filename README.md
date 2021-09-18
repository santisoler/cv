# Curriculum Vitae

Sources for building my academic CV, written in LaTeX and using the
[`moderncv`](https://www.ctan.org/pkg/moderncv) document class.

Download a [PDF version of my CV](https://santisoler.github.io/cv/cv.pdf).

## How to build

I recommend using the `Makefile` for building the CV.

Requirements (Ubuntu or Debian):
- `make`
- `latexmk`
- `texlive`
- `texlive-latex-extra`

For creating the PDF:

```
make pdf
```

Use `make show` to open the PDF with your favourite PDF reader.


## Older version

The previous version of my CV, written in Markdown and compiled using `pandoc`,
is available under the
[`latest-markdown-2021`](https://github.com/santisoler/cv/releases/tag/latest-markdown-2021)
tag.
