word:
	rm -f doc.md
	rm -f doc.Rmd
	bash word_export/combine_and_render.sh

book:
	rm -rf docs/*
	rm -rf figs/*
	Rscript -e "bookdown::render_book('.')"
