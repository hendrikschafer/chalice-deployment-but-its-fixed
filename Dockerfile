ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}

LABEL version="1.0.0"
LABEL repository="https://github.com/hendrikschafer/chalice-deployment-but-its-fixed"
LABEL homepage="https://github.com/hendrikschafer/chalice-deployment-but-its-fixed"
LABEL maintainer="Hendrik <hendrik@schaefer.be> (https://fixmy.cv)"

COPY entrypoint.sh /entrypoint.sh

RUN pip install --upgrade pip
RUN pip install chalice

ENTRYPOINT ["/entrypoint.sh"]
