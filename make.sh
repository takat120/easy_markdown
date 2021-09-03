#!/bin/sh

source ./settings.sh

index_temp=${base_path}"/temp/index.md"
index_out=${base_path}"/public/index.html"


if [ -e $index_out ]; then
rm $index_out
fi

md_path=${base_path}"/md/"
md_files=`find $md_path -type f -name "*.md"`


for file in $md_files;
do
    pandoc $file -f markdown -t html -s -o ${base_path}/public/pages/`basename -s .md $file`.html --shift-heading-level-by=-1
done

html_path=${base_path}"/public/pages/"
html_files=`find $html_path -type f -name "*.html"`

touch $index_temp
echo "# ${site_name}" >> $index_temp
echo "## ${index_name}" >> $index_temp

for file in $html_files;
do
   fn=pages/`basename $file`
   grep_result=`grep "<title>" $file`
   re1=${grep_result/<title>/}
   re2=${re1/<\/title>/}
   echo "- [$re2]($fn)" >> $index_temp
done

echo "" >> $index_temp
echo "&copy;`date +%Y`&nbsp;${copyright_name}." >> $index_temp

pandoc $index_temp -f markdown -t html -s -o $index_out --shift-heading-level-by=-1

cp ${base_path}/md/media/* ${base_path}/public/pages/media/

if [ -e $index_temp ]; then
rm $index_temp
fi