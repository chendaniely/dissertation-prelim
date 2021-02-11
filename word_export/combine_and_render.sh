cat word_export/yaml.yaml > word_export/doc.Rmd

# remove yaml header
# https://stackoverflow.com/questions/28221779/how-to-remove-yaml-frontmatter-from-markdown-files/29292490
sed '1 { /^---/ { :a N; /\n---/! ba; d} }' index.Rmd >> word_export/doc.Rmd
cat 10-*.Rmd >> word_export/doc.Rmd

cat 20-*.Rmd >> word_export/doc.Rmd
cat 30-*.Rmd >> word_export/doc.Rmd

cat 99-*.Rmd >> word_export/doc.Rmd

Rscript -e "rmarkdown::render(input='word_export/doc.Rmd', output_dir = 'word_export', knit_root_dir='.')"
