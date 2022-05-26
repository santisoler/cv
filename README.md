# Curriculum Vitae

Sources for building my academic CV, written in LaTeX and using a custom
template inspired on [leouieda/cv](https://github.com/leouieda/cv) and
[lheagy/cv](https://github.com/lheagy/cv).

Download a [PDF version of my CV](https://santisoler.github.io/cv/cv.pdf).

## How to build

### Using tectonic

You can use [Tectonic](https://tectonic-typesetting.github.io/en-US/) to build
the PDF version of the CV from the sources. Tectonic is a modernizes
self-contained LaTeX engine that's usually
faster than using a regular LaTeX compiler.
Check its website for instructions on how to install it. If you are familiar
with Anaconda, it can be installed from
[conda-forge](https://github.com/conda-forge/tectonic-feedstock).

I recommend using the `Makefile` to build the PDF:

- Use `make` to **build** the PDF.
- Use `make show` to **open** the PDF with your favourite PDF reader.
- Use `make clean` to **remove** the built PDF.

### Using texlive

If you cannot install Tectonic, you can still generate the PDF out of you
regular texlive installation. But you might need some extra packages:

For Ubuntu or Debian:

- `latexmk`
- `texlive`
- `texlive-latex-extra`
- `texlive-xetex`
- `texlive-fonts-extra`

To build the PDF just run:

```
mkdir _output
latexmk -xelatex -outdir=_output cv.tex
```

You can use `make show` to open the PDF with you favourite PDF reader and
`make clean` to remove the built PDF and every other generated file.


## Older versions

- The previous version of my CV, written in LaTeX and using the `moderncv` class
is available under the
[`latest-moderncv-2022`](https://github.com/santisoler/cv/releases/tag/latest-moderncv-2022)
tag.
- The previous version of my CV, written in Markdown and compiled using `pandoc`,
is available under the
[`latest-markdown-2021`](https://github.com/santisoler/cv/releases/tag/latest-markdown-2021)
tag.

## License

All LaTeX template source code is distributed under the [BSD 3-clause
License](https://opensource.org/licenses/BSD-3-Clause).
