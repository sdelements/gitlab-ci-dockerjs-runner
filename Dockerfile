FROM node:14-alpine

LABEL org.label-schema.vcs-url=https://github.com/sdelements/gitlab-ci-dockerjs-runner org.label-schema.vendor=sdelements org.label-schema.name=gitlab-ci-dockerjs-runner

RUN apk add --update --no-cache python py-pip python-dev git git-lfs docker openssh openssl-dev \
    curl make gcc g++ linux-headers binutils-gold gnupg libstdc++ libffi-dev && \
    git lfs install --skip-repo && \
    pip install docker-compose && pip install virtualenv

CMD ["sh"]
