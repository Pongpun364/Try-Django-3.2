FROM python:3.6-alpine

WORKDIR /usr/src/trydjango

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy project
COPY . .