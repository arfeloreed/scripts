#!/bin/bash

# check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <video_file> <audio_file>"
    exit 1
fi

# assign arguments to variables
video_file="$1"
audio_file="$2"
output_file="output.mp4"

# merge video and audio files using ffmpeg, be sure that ffmpeg is installed
ffmpeg -i "$video_file" -i "$audio_file" -c:v copy -c:a aac "$output_file"

echo "Merging completed. Output saved as $output_file"

