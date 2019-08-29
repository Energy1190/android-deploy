FROM rabits/qt:5.13-android-armv7

USER root 
WORKDIR /root 

ADD ./requirements.txt /root/requirements.txt

RUN apt-get update \
    && apt-get install -y wget software-properties-common \
	&& add-apt-repository -y ppa:deadsnakes/ppa \
	&& apt install -y python3.7 python3-pip \
	&& pip3 install -r /root/requirements.txt

USER user
WORKDIR /home/user