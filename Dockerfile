FROM rabits/qt:5.13-android-armv7

USER root 

ADD ./requirements.txt /requirements.txt

RUN apt-get update \
    && apt-get install -y software-properties-common \
	&& add-apt-repository -y ppa:deadsnakes/ppa \
	&& apt install -y python3.7 python3-pip \
	&& pip3 install -r requirements.txt

USER user