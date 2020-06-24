FROM python:3.8.3-alpine3.12

COPY requirements.txt /fort/requirements.txt

RUN /sbin/apk add --no-cache --virtual .deps gcc libffi-dev musl-dev postgresql-dev \
 && /sbin/apk add --no-cache libpq \
 && /usr/local/bin/pip install --no-cache-dir --requirement /fort/requirements.txt \
 && /sbin/apk del --no-cache .deps

ENV PYTHONUNBUFFERED="1"

ENTRYPOINT ["/usr/local/bin/python"]

COPY . /fort
WORKDIR /fort
