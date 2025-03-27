FROM nginx:stable

COPY message .
COPY ReadLineWords .

RUN ls -la

RUN ./ReadLineWords > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]