FROM alpine

LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"


RUN apk add --no-cache bash curl unzip ca-certificates fuse openssh-client \
  && wget -qO- https://raw.githubusercontent.com/rclone/rclone/master/docs/content/install.sh | bash \
  && apk del bash curl unzip

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
