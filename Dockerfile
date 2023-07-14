FROM python:3.11.4-alpine3.18

ENV PYTHONUNBUFFERED 1


COPY ./requirements.txt /common-requirements.txt


RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip



RUN /py/bin/pip install -r /common-requirements.txt
