FROM python:3.10-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        git \
        zip \
        unzip \
        openjdk-11-jdk \
        python3-pip \
        python3-setuptools \
        libffi-dev \
        libssl-dev \
        libsqlite3-dev \
        libpng-dev \
        libjpeg-dev \
        libfreetype6-dev \
        libgl1-mesa-dev \
        libgles2-mesa-dev \
        libncurses5-dev \
        libstdc++6 \
        wget \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip setuptools wheel \
    && pip install buildozer==1.5.0 Cython kivy

WORKDIR /app
COPY . /app

CMD ["buildozer", "--version"]
