FROM node:10.18.1-alpine3.11

LABEL org.label-schema.vcs-url=https://github.com/sdelements/gitlab-ci-dockerjs-runner org.label-schema.vendor=sdelements org.label-schema.name=gitlab-ci-dockerjs-runner

RUN apk add --update --no-cache python py-pip python-dev git openssh openssl-dev \
    curl make gcc g++ linux-headers binutils-gold gnupg libstdc++ libffi-dev && \
    pip install docker-compose && pip install virtualenv

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]
