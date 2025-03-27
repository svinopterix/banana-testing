FROM nginx:stable

COPY message /tmp/
COPY ReadLineWords /tmp/

WORKDIR /tmp

RUN /tmp/ReadLineWords > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]