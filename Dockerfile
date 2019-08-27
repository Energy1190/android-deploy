FROM python:3.7

RUN apt-get update \
    && apt-get install -y openjdk-8-jdk openjdk-8-jre qt5-default

RUN mkdir -p /src \
    && wget https://dl.google.com/android/repository/android-ndk-r20-linux-x86_64.zip -P /src \
	&& wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip -P /src

RUN mkdir -p /android \
    && unzip /src/android-ndk-r20-linux-x86_64.zip -d /android/ndk \
    && unzip /src/sdk-tools-linux-4333796.zip -d /android/sdk 

ADD ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt
