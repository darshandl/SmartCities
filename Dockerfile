FROM jupyter/minimal-notebook

WORKDIR /home/jovyan/work

COPY . .

USER root

RUN apt-get update && apt-get install -y python3-opencv

RUN pip install -r requirements.txt

EXPOSE 8888

