FROM nginx:alpine

COPY blood-donation-system/index.html /usr/share/nginx/html/index.html

EXPOSE 80