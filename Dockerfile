FROM python:3.10.1-alpine3.15

COPY requirements.txt /fort/requirements.txt

RUN /sbin/apk add --no-cache libpq
RUN /usr/local/bin/pip install --no-cache-dir --requirement /fort/requirements.txt

ENV PYTHONUNBUFFERED="1"

ENTRYPOINT ["/usr/local/bin/python"]
