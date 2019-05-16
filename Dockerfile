FROM alpine:3.6

LABEL repository="https://github.com/groupninemedia/filter-git-diff"
LABEL homepage="https://github.com/groupninemedia/filter-git-diff"
LABEL maintainer="GroupNineMedia <devops@groupninemedia.com>"
LABEL "com.github.actions.name"="Filter Git Diff"
LABEL "com.github.actions.description"="Action that allows filtering of modified files using RegEx."
LABEL "com.github.actions.icon"="filter"
LABEL "com.github.actions.color"="black"

RUN apk --update add git less \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

ENV PATH="/usr/local/bin:${PATH}"

COPY bin /usr/local/bin/
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
