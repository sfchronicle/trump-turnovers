# White House Turnovers project

Illustrations/animations by Graphic Designer John Blanchar.

## Notes on how to modify files (if needed)

### Convert mp4 to GIF
```bash
ffmpeg -i INPUT.mp4 OUTPUT.gif
```

### Get first image from video file
```bash
ffmpeg -i INPUT.mp4 -vf "select=eq(n\,0)" -q:v 3 OUTPUT.jpg
```

### Make GIF loop once
One GIF file:
```bash
gifsicle INPUT.gif --no-loopcount -o OUTPUT.gif
```

All GIFs in one directory and replace original GIF
```bash
gifsicle --batch --no-loopcount *.gif
```

## Deploy
```bash
$ deploy.sh 2018 white-house-turnovers
```