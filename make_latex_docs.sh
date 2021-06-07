#!/usr/bin/env sh

# function that makes a pdf from a target tex file and copies it to the directory of the site's assets.
function savelextopdfat(){
	cd "latex_scr/$1"
	pdflatex -output-directory="build" "main.tex"
	cd -
	cp "latex_scr/$1/build/main.pdf" "blog/_assets/$2"
}

savelextopdfat "CV" "markus_amano_cv.pdf"
# savelextopdfat "Publication_List" "markus_amano_publications.pdf"
