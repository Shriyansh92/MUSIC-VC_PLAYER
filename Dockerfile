FROM nikolaik/python-nodejs:python3.9-nodejs16

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

RUN cd /
RUN git clone https://github.com/Shriyansh92/MUSIC-VC_PLAYER
RUN cd MUSIC-VC_PLAYER
WORKDIR /MUSIC-VC_PLAYER

RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt

CMD python3 main.py
