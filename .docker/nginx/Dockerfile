FROM nginx:1.23-alpine
RUN rm /etc/nginx/conf.d/default.conf

ARG CONF_DIR
COPY $CONF_DIR/nginx.conf /etc/nginx/conf.d/
