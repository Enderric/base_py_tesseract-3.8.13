ARG PY_VERS_NEW




FROM python:$PY_VERS_NEW-slim-buster

ARG LIBGTK20_DEV 
ARG FFMPEG
ARG LIBSM6
ARG LIBXEXT6 
ARG POPPLER_UTILS 
ARG BUILD_ESSENTIAL 
ARG LIBZBAR_DEV 
ARG GIT 
ARG G2PLUS 
ARG TESSERACT

RUN apt update \
 && apt install -y --no-install-recommends $LIBGTK20_DEV \
 && apt install -y --no-install-recommends $FFMPEG \
 && apt install -y --no-install-recommends $LIBSM6 \
 && apt install -y --no-install-recommends $LIBXEXT6 \
 && apt install -y --no-install-recommends $POPPLER_UTILS \
 && apt install -y --no-install-recommends $BUILD_ESSENTIAL \
 && apt install -y --no-install-recommends $LIBZBAR_DEV \
 && apt install -y --no-install-recommends $GIT \
 && apt install -y --no-install-recommends $G  \
 && apt install -y --no-install-recommends $TESSERACT  \
 && apt clean && rm -rf /var/lib/apt/lists/*

# WORKDIR /usr/app

# COPY ./app/Pipfile* /usr/app/

# RUN python3 -m pip install --upgrade pip \
#  && pip3 install -U pipenv \