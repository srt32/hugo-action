FROM alpine:latest

LABEL "com.github.actions.name"="Hugo Actions"
LABEL "com.github.actions.description"="Commands to help with building Hugo based sites"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="http://github.com/srt32/hugo-actions"
LABEL "homepage"="http://github.com/srt32/hugo-actions"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

RUN	apk add --no-cache hugo

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
