FROM ubuntu:22.04

# Установим Python и необходимые зависимости
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-setuptools \
        build-essential \
        git \
        zip \
        unzip \
        openjdk-11-jdk \
        libffi-dev \
        libssl-dev \
        libsqlite3-dev \
        libpng-dev \
        libjpeg-dev \
        libfreetype6-dev \
        libgl1-mesa-dev \
        libgles2-mesa-dev \
        libncurses5-dev \
        wget \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Обновим pip и поставим Python-зависимости
RUN pip3 install --upgrade pip setuptools wheel \
    && pip3 install buildozer==1.5.0 Cython kivy

WORKDIR /app
COPY . /app

CMD ["buildozer", "--version"]
