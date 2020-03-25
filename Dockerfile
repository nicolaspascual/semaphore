FROM python:3.7-alpine

RUN set -x \
    && apk add --no-cache \
        bc \
        gcc \
        libffi-dev \
        make \
        musl-dev \
        openssl-dev \
        python3 \
        python3-dev

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY ./ /app


CMD ["tail", "-f", "/dev/null"]