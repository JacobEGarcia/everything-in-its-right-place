#!/bin/bash
# Drop Radiohead's "Everything In Its Right Place" (your own MP3) into the edit.
# Usage: ./add_audio.sh "/path/to/everything-in-its-right-place.mp3"
# Output: everything_final.mp4 (video + song, trimmed to the shorter of the two)
set -e
SONG="$1"
ffmpeg -y -i everything_master.mp4 -i "$SONG" -map 0:v:0 -map 1:a:0 -c:v copy -c:a aac -b:a 192k -shortest everything_final.mp4
echo "done -> everything_final.mp4"
