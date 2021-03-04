#!/bin/bash

rm *.jpg


for filename in originals/*; do
	# Originals as JPG.
	convert "$filename" -quality 100 "$(basename "$filename" | cut -f 1 -d '.').jpg"
	
	# For a 1080p screen, file resolution should be roughly 442 pixels wide..
	convert "$filename" -quality 100 -resize 442x "$(basename "$filename" | cut -f 1 -d '.')_1080.jpg"
done

