
# The -re flag forces FFmpeg to read the input file at its native frame rate, effectively streaming in real-time.
stream: 
	ffmpeg -re -i imagery/my_test_file.flv -c:v copy -c:a copy -f flv rtmp://127.0.0.1:1935/test/sample

localhost-stream:
	ffmpeg -re -i imagery/my_test_file.flv -c:v copy -c:a copy -f flv rtmp://localhost/test/sample

mp4-stream: 
	ffmpeg -re -i imagery/input.mp4 -c:v copy -c:a copy -f flv rtmp://127.0.0.1:1935/test/sample

quick-stream: 
	ffmpeg -i imagery/my_test_file.flv -c:v copy -c:a copy -f flv rtmp://127.0.0.1:1935/test/sample