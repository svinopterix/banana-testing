FROM nginx:stable

COPY message .
COPY --chmod=0755 ReadLineWords .

RUN ./ReadLineWords > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]