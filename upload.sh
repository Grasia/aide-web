jekyll build
chmod -R 755 _site
find _site -iname "*.htm*"  -exec sed -i "s/\=\"\//\=\"\/aide\//g" {} \;
rsync -avP -e ssh _site/* sociaalweb@grasia.fdi.ucm.es:/var/www/aide
