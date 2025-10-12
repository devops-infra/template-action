# Use a clean tiny image to store artifacts in
FROM alpine:3.22.2

# Copy all needed files
COPY entrypoint.sh /

# Install needed packages
RUN set -eux ;\
  chmod +x /entrypoint.sh ;\
  apk update --no-cache ;\
  apk add --no-cache \
    bash~=5.2.37 ;\
  # OTHER BINARIES TO INSTALL HERE \
  rm -rf /var/cache/* ;\
  rm -rf /root/.cache/*

# Finish up
WORKDIR /github/workspace
ENTRYPOINT ["/entrypoint.sh"]
