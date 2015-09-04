@echo off

REM Two commands to normalize and mux audio.
REM uses https://github.com/slhck/audio-normalize and ffmpeg

normalize.py -v -i %1

ffmpeg -i %1 -i normalized-%~n1.wav -c copy -map 0:v:0 -map 1:a:0 %~n1.mkv

del normalized-%~n1.wav
