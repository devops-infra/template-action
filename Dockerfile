FROM ubuntu:questing-20251007

# Disable interactive mode
ENV DEBIAN_FRONTEND noninteractive

# Copy all needed files
COPY entrypoint.sh /

# Install needed packages
SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]
# hadolint ignore=DL3008
RUN set -eux ;\
  chmod +x /entrypoint.sh ;\
  apt-get update -y ;\
  echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections ;\
  apt-get install --no-install-recommends -y \
    jq ;\
  # OTHER BINARIES TO INSTALL HERE \
  apt-get clean ;\
  rm -rf /var/lib/apt/lists/*

# Finish up
WORKDIR /github/workspace
ENTRYPOINT ["/entrypoint.sh"]
