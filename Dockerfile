FROM nginx:alpine

COPY blood-donation-system/index.html /usr/share/nginx/html/index.html
COPY blood-donation-system/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80