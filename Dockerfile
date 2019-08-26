FROM python:3.7

RUN apt-get update \
    && apt-get install -y openjdk-11-jdk openjdk-11-jre

RUN mkdit -r /src \
    && wget https://dl.google.com/android/repository/android-ndk-r20-linux-x86_64.zip -P /src \
	&& wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip -P /src

RUN unzip /src/android-ndk-r20-linux-x86_64.zip -d /android/ndk \
    && unzip /src/sdk-tools-linux-4333796.zip -d /android/sdk \

RUN pip install -r requirements.txt
