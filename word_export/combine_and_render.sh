cat word_export/yaml.yaml > word_export/doc.Rmd
cat 10-*.Rmd >> word_export/doc.Rmd
cat 20-*.Rmd >> word_export/doc.Rmd
cat 30-*.Rmd >> word_export/doc.Rmd

cat 99-*.Rmd >> word_export/doc.Rmd

Rscript -e "rmarkdown::render(input='word_export/doc.Rmd', output_dir = 'word_export', knit_root_dir='.')"
