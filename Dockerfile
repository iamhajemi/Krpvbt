FROM ubuntu:jammy
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER Haji Shikhh
RUN echo Haji
CMD echo Haji
COPY . .

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update && apt-get upgrade -y && apt-get install -y sudo unzip curl apt-utils libqt5gui5 python3-psutil wget python3 python3-pip p7zip-full git build-essential make







WORKDIR /





RUN wget --no-check-certificate "https://onedrive.live.com/download?cid=547CCA53C39C1EA1&resid=547CCA53C39C1EA1%21597&authkey=AJ4sTsx2ixvmb68" -O 3-4-5.7z
RUN 7z x 3-4-5.7z -o\engines
RUN rm 3-4-5.7z





RUN wget --no-check-certificate "https://onedrive.live.com/download?cid=547CCA53C39C1EA1&resid=547CCA53C39C1EA1%21618&authkey=AGMpXe5x5RzG868" -O PerfectCevdet6.7z
RUN 7z e PerfectCevdet6.7z -o\engines
RUN rm PerfectCevdet6.7z


COPY requirements.txt .
RUN python3 -m pip install --no-cache-dir -r requirements.txt








CMD python3 run.py
