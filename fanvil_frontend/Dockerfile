ARG BUILD_FROM
FROM ${BUILD_FROM}

RUN apk add --no-cache nginx curl unzip

ARG FRONTEND_VERSION=20260930.5
ARG FRONTEND_SHA256=9cc03b3d2a43e93c6e57cc20b322c98cce61be7a35d7c1df1021e279d22d1f9b

RUN mkdir -p /opt/fanvil /run/nginx /data/frontend \
    && curl -fL --retry 3 \
      "https://files.pythonhosted.org/packages/d8/d1/e02a835dd5840c5219c4934db265e395a661a7882e0b68c96c1589d3c2d2/home_assistant_frontend-${FRONTEND_VERSION}-py3-none-any.whl" \
      -o /tmp/frontend.whl \
    && echo "${FRONTEND_SHA256}  /tmp/frontend.whl" | sha256sum -c - \
    && unzip -q /tmp/frontend.whl 'hass_frontend/*' -d /opt/fanvil \
    && mv /opt/fanvil/hass_frontend/* /opt/fanvil/ \
    && rmdir /opt/fanvil/hass_frontend \
    && rm /tmp/frontend.whl

COPY nginx.conf /etc/nginx/http.d/fanvil.conf
COPY index.html /opt/fanvil/index.html
COPY run.sh /run.sh

RUN chmod +x /run.sh

CMD ["/run.sh"]
