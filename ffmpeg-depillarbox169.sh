# -hide_banner -i input.mp4 -vcodec h264_nvenc -bf:v 3 -rc vbr_hq -cq 19 -preset slow -profile:v main -c:a copy  -y output.mp4
# for i in *.mp4; do ffmpeg -i "$i" -vcodec h264_nvenc -preset slow -level 4.1 -qmin 10 -qmax 52 "${i%.*}.mkv"; done
for i in *.mp4; do ffmpeg -i "$i" -vcodec h264_nvenc -preset slow -filter:v 'crop=ih/3*4:ih' -c:a copy "export/${i%.*}.mkv"; done
