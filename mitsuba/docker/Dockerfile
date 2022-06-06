FROM ubuntu:20.04
#FROM ubuntu:latest
#COPY . .
RUN apt-get update
#RUN apt-get install -y build-essential scons
WORKDIR /app

RUN apt-get update
RUN apt-get install apt-transport-https -y
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install -y build-essential scons
RUN apt-get install -y libpng-dev libjpeg-dev libilmbase-dev libopenexr-dev
RUN apt-get install -y libeigen3-dev libfftw3-dev
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y libxerces-c-dev
RUN apt-get install -y libpcrecpp0v5
RUN apt-get install -y libxxf86vm-dev libglew-dev
RUN apt-get install -y libglewmx-dev

# We need git so we can update the submodule from inside the docker container
RUN apt-get install git -y

# ubuntu:
RUN apt-get install -y qt5-default qt5-qmake libqt5xmlpatterns5-dev

#debian:
#RUN apt-get install -y qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools
#RUN apt-get install -y qt5-qmake libqt5xmlpatterns5-dev

RUN apt-get install -y wget unzip
RUN apt-get install -y python3 python3-pip
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install numpy OpenEXR Imath

# cthulhu add-ons:
RUN apt-get install -y libxerces-c-dev

CMD ["./run_inside_docker.sh"]
