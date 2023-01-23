# syntax=docker/dockerfile:1
FROM python:3.10.8-bullseye

RUN apt install git
RUN apt-get update

ENV requirements=requirements.txt

COPY $requirements $requirements
RUN pip3 --no-cache-dir install -r $requirements

COPY . .