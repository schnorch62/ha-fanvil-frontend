ARG BUILD_FROM
FROM ${BUILD_FROM}

RUN apk add --no-cache nginx
COPY nginx.conf /etc/nginx/http.d/fanvil.conf
COPY staging.html /opt/fanvil/staging.html
COPY run.sh /run.sh
RUN chmod +x /run.sh && mkdir -p /run/nginx /data/frontend
CMD ["/run.sh"]
