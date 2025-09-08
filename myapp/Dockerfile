FROM ubuntu:22.04

# Устанавливаем все зависимости
RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-venv git zip unzip \
    openjdk-17-jdk autoconf automake libtool pkg-config \
    zlib1g-dev libncurses5-dev libncursesw5-dev libtinfo5 \
    cmake libffi-dev libssl-dev libjpeg-dev libpng-dev \
    && apt-get clean

# Устанавливаем Buildozer и Kivy
RUN pip3 install buildozer kivy cython

# Устанавливаем переменную для неинтерактивного режима
ENV BUILDozER_NON_INTERACTIVE=1

WORKDIR /src

CMD ["buildozer", "android", "debug"]
