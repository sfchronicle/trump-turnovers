#!/bin/bash


for file in ./videos/*; do
  
  fullfilename=${file##.*/}
  videofile=${fullfilename%%.*}


  # converts video to GIF
  ffmpeg -i ./videos/$videofile.mp4 ./videos/$videofile.gif

  # extract first frame as a JPG
  ffmpeg -i ./videos/$videofile.mp4 -vf "select=eq(n\,0)" -q:v 3 ./videos/$videofile.jpg

  # make GIF only loop once
  gifsicle ./videos/$videofile.gif --no-loopcount -o ./videos/$videofile.gif

  # move files to the assets folder
  mv ./videos/$videofile.gif ./src/assets/$videofile.gif
  mv ./videos/$videofile.jpg ./src/assets/$videofile.jpg

  # delete the MP4 file, since we no longer need it
  rm ./videos/$videofile.mp4

done