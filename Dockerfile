FROM alpine

LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"


#RUN apk add --no-cache bash curl unzip ca-certificates fuse openssh-client \
  && wget -qO- https://rclone.org/install.sh | bash \
  && apk del bash curl unzip
RUN RUN apk add --no-cache bash curl unzip ca-certificates fuse openssh-client \
   apt install rclone -y \
  && apk del bash curl unzip
ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
