FROM ubuntu
LABEL maintainer="Chaitanya"
RUN apt-get update -y && apt-get install -y \
nginx \
vim \
wget \
curl \
net-tools
RUN rm -f /etc/nginx/sites-available/default
RUN rm -f /etc/nginx/sites-enabled/default
RUN mkdir -p /var/www/abc.com/html
COPY index.html /var/www/abc.com/html/
COPY abc.com /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/abc.com /etc/nginx/sites-enabled/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

