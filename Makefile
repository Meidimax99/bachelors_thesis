main.pdf: main.tex misc/setup.tex misc/titlepage.tex $(wildcard chapters/*.tex) $(wildcard appendices/*.tex) clean-lit.bib
	lualatex main.tex &&  biber main && lualatex main.tex && lualatex main.tex

simple: main.tex misc/setup.tex misc/titlepage.tex $(wildcard chapters/*.tex) $(wildcard appendices/*.tex) clean-lit.bib
	lualatex main.tex

clean:
	latexmk -c && rm main.pdf && rm main.bbl && rm main.run.xml
move:
	if [ -d pdf ]; then \
		mv *.pdf pdf/.; \
	else \m
		mkdir pdf; \
		mv *.pdf pdf/.; \
	fi
