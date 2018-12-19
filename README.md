# White House Turnovers project

Illustrations/animations by Graphic Designer John Blanchar.

## Notes on how to modify files (if needed)

### Command to do it all
Run this bash script `gif.sh` that converts any MP4s in the /videos directory into a GIF, extracts the first frame as a JPG and makes the GIF loop once. It also puts the files where needed and deletes the MP4 file after. 

```bash
$ bash gif.sh
```

Then you you just deploy the project!

## Deploy
```bash
$ bash deploy.sh 2018 white-house-turnovers
```