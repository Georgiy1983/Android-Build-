FROM python:3.10-slim

# Установка системных зависимостей
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        git \
        zip \
        unzip \
        openjdk-17-jdk \
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
    && apt-get clean

# Установка buildozer
RUN pip install --upgrade pip setuptools wheel \
    && pip install buildozer==1.5.0 Cython kivy

# Добавить исходники
WORKDIR /app
COPY . /app

# По умолчанию запуск buildozer
CMD ["buildozer", "--version"]
