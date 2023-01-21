ARG NGINX_VERSION=1.22.1-alpine
FROM nginx:$NGINX_VERSION

# Install inotify
RUN set -ex; \
    apk add --no-cache \
        inotify-tools \
    ;

# Set variables
ENV AUTORELOAD_BIN=40-autoreload.sh \
    ENTRYPOINT_DIR=/docker-entrypoint.d
ENV AUTORELOAD_PATH=${ENTRYPOINT_DIR}/${AUTORELOAD_BIN}

# Install autoreload script on Nginx's docker-entrypoint
COPY ${AUTORELOAD_BIN} ${AUTORELOAD_PATH}
RUN set -eux; chmod 755 "${AUTORELOAD_PATH}"
