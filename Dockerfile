FROM ubuntu:16.04
MAINTAINER Maiko Eskelsen <maikoe@gmail.com>

# required by PHP 5.6
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get install -y language-pack-en-base &&\
    export LC_ALL=pt_BR.UTF-8 && \
    export LANG=pt_BR.UTF-8


RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y software-properties-common
RUN DEBIAN_FRONTEND=noninteractive LC_ALL=pt_BR.UTF-8 add-apt-repository -y ppa:ondrej/php


RUN apt-get update && apt-get install php5.6 php5.6-mysql php5.6-gettext \ 
    php5.6-mbstring php5.6-gd libapache2-mod-php5.6 php5.6-cgi php5.6-cli \
    php5.6-json php5.6-bz2 php5.6-mcrypt php5.6-xsl php5.6-bcmath \ 
    php5.6-soap php5.6-xml php5.6-zip php5.6-dba php5.6-pspell php5.6-intl 
    
