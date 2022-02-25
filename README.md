# Curriculum Vitae

Sources for building my academic CV, written in LaTeX and using a custom
template inspired on [leouieda/cv](https://github.com/leouieda/cv) and
[lheagy/cv](https://github.com/lheagy/cv).

Download a [PDF version of my CV](https://santisoler.github.io/cv/cv.pdf).

## How to build

I recommend using the `Makefile` for building the CV.

Requirements (Ubuntu or Debian):
- `make`
- `latexmk`
- `texlive`
- `texlive-latex-extra`
- `texlive-xetex`
- `texlive-fonts-extra`

For creating the PDF:

```
make pdf
```

Use `make show` to open the PDF with your favourite PDF reader.


## Older versions

- The previous version of my CV, written in LaTeX and using the `moderncv` class
is available under the
[`latest-moderncv-2022`](https://github.com/santisoler/cv/releases/tag/latest-moderncv-2022)
tag.
- The previous version of my CV, written in Markdown and compiled using `pandoc`,
is available under the
[`latest-markdown-2021`](https://github.com/santisoler/cv/releases/tag/latest-markdown-2021)
tag.
