PROPOSAL=rep_modules.tex	# Path to full proposal document

$(PROPOSAL).pdf: $(PROPOSAL).tex
	latexmk -pdf -quiet $(PROPOSAL)