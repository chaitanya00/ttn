FROM ubuntu
LABEL maintainer="Chaitanya"
RUN apt-get update -y && apt-get install -y \
nginx \
vim \
wget \
curl \
net-tools
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

