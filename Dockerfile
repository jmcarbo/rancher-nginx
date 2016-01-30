FROM nginx
RUN apt-get update && apt-get install -y vim
#COPY nginx.conf /etc/nginx/conf.d/nginx.conf
#ADD https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 /usr/local/bin/confd
ADD confd-0.11.0-linux-amd64 /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd
RUN mkdir -p /etc/confd/conf.d
RUN mkdir -p /etc/confd/templates
ADD nginx.toml /etc/confd/conf.d
ADD nginx.tmpl /etc/confd/templates

