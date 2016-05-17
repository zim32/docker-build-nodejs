FROM zim32/debian:v1

RUN cd ~/ && apt-get update && apt-get install -y \
	build-essential \
	sudo \
	curl \
	git && \
	curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - && \
	apt-get install nodejs -y && \
	npm install npm -g && \
	npm install pm2 -g
