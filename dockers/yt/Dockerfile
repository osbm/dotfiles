FROM ubuntu:22.04

RUN apt-get update

RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:tomtomtom/yt-dlp

RUN apt-get install -y yt-dlp

WORKDIR /downloads

ENTRYPOINT ["yt-dlp"]
# docker run -v $(pwd):/downloads yt "https://www.youtube.com/watch?v=wjZofJX0v4M"