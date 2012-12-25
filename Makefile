resume.pdf: resume.tex
	spell -d ignore  resume.tex
	texi2pdf resume.tex
	latex resume.tex  
clean:
	rm resume.pdf
	rm resume.dvi
install: resume.pdf
	cp resume.pdf /var/www/michael-wheeler.org/html/resume.pdf
