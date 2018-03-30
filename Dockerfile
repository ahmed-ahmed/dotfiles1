From ubuntu

RUN apt-get clean && apt-get update && apt-get install -y locales vim curl sudo
RUN locale-gen en_US.UTF-8

WORKDIR /root

RUN git clone https://github.com/ahmed-ahmed/dotfiles1.git
