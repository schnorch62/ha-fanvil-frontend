
ARG BUILD_FROM
FROM ${BUILD_FROM}

RUN apk add --no-cache nginx curl unzip

ARG FRONTEND_VERSION=20260930.5
ARG FRONTEND_SHA256=9cc03b3d2a43e93c6e57cc20b322c98cce61be7a35d7c1df1021e279d22d1f9b

COPY frontend.whl.part.* /tmp/

RUN mkdir -p /opt/fanvil /run/nginx /data/frontend \
    && cat /tmp/frontend.whl.part.* > /tmp/frontend.whl \
    && echo "${FRONTEND_SHA256}  /tmp/frontend.whl" | sha256sum -c - \
    && unzip -q /tmp/frontend.whl 'hass_frontend/*' -d /opt/fanvil \
    && mv /opt/fanvil/hass_frontend/* /opt/fanvil/ \
    && rmdir /opt/fanvil/hass_frontend \
    && rm /tmp/frontend.whl /tmp/frontend.whl.part.*

COPY nginx.conf /etc/nginx/http.d/fanvil.conf
COPY index.html /opt/fanvil/index.html
COPY run.sh /run.sh

RUN chmod +x /run.sh

CMD ["/run.sh"]

