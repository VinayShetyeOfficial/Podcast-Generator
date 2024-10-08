FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
