FROM quintoandar/docsify

ADD /docs/ .
COPY /nginx.conf /etc/nginx/conf.d/default.conf
