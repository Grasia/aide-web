#!/bin/bash
# Author: Jorge Gomez. Reusing pieces from http://galleryproject.org/node/28070 and specially http://stackoverflow.com/questions/17221481/fastest-way-to-create-animated-gifs-from-mp4
if [ $1 !=  0 ]; then
	if [ $2 !=  0 ]; then
		#ffmpeg -i $1 videoF.avi
		rm -rf jpeg_dir
		mplayer $1 -vo jpeg:outdir=jpeg_dir:quality=100 -sstep 5 -frames 20
		for i in ./jpeg_dir/*.jpg; do echo $i;convert -resize 10% "$i" "${i%.jpg}.gif"; done
		gifsicle --delay=100 --loop ./jpeg_dir/*.gif > $2
	else 
		echo "thumbnailer [inputfile] [nameanimatedgif]"
	fi
else
		echo "thumbnailer [inputfile] [nameanimatedgif]"
fi



