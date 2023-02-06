FROM jwilder/nginx-proxy

# https://github.com/brettt89/nginx-proxy/blob/master/Dockerfile
RUN { \
  echo 'client_max_body_size 128M;'; \
  echo 'proxy_buffer_size 256k;'; \
  echo 'proxy_buffers 4 512k;'; \
  echo 'proxy_busy_buffers_size 512k;'; \
} > /etc/nginx/conf.d/my_proxy.conf
