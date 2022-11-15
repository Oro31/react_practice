FROM debian:buster

WORKDIR /home

RUN apt-get update && apt-get install -y \
	vim \
	zsh	\
	git	\
	build-essential	\
	curl

RUN curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh

RUN bash nodesource_setup.sh

RUN apt install nodejs

RUN npm install create-react-app

EXPOSE 3000
