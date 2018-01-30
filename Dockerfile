FROM nginx:alpine
RUN sed -i "s/listen[[:space:]][[:space:]]*80/listen 9999/" /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
EXPOSE 9999