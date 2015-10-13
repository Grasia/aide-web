#!/bin/bash
# Author: Jorge Gomez. Reusing pieces from http://galleryproject.org/node/28070 and specially http://stackoverflow.com/questions/17221481/fastest-way-to-create-animated-gifs-from-mp4
if [ $1 !=  0 ]; then
	if [ $2 !=  0 ]; then
		rm *.gif *.jpg
		for i in $(seq 1 3); do 
			echo "http://img.youtube.com/vi/$1/$i.jpg";
			wget "http://img.youtube.com/vi/$1/$i.jpg";
			convert "http://img.youtube.com/vi/$1/$i.jpg" "${i%.jpg}.gif"; 
		done
		gifsicle --delay=100 --loop *.gif > $2
		rm *.jpg
	else 
		echo "thumbnailer [youTubeId] [nameanimatedgif]"
	fi
else
		echo "thumbnailer [youTubeId] [nameanimatedgif]"
fi



