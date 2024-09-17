FROM ubuntu:latest

RUN apt -y update && apt -y upgrade

RUN apt -y install micro

RUN apt -y install ffmpeg 
RUN apt -y install libsm6 
RUN apt -y install libxext6 

RUN apt -y install python3
RUN apt -y install python3-pip
RUN apt -y install python3.12-venv

WORKDIR /opt
COPY REDPILL.pdf .

RUN python3 -m venv marker && \
	. marker/bin/activate && \
	pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu && \
	pip3 install marker-pdf && \
	pip3 install streamlit && \
	deactivate 

CMD ["bash"]
