FROM nathandines/forge:latest

WORKDIR /workdir

RUN apk -v --update add \
        python \
        py-pip \
        groff \
        ca-certificates \
        less \
        mailcap \
        && \
    pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

COPY . /workdir

ENTRYPOINT [ "/bin/sh" ]
