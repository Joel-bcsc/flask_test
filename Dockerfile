# Dockerfile

# Pull base image
FROM python:3.7-alpine

# Set evnironment variables
ENV PYTHONODNTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory
RUN mkdir /code
WORKDIR /code

# Install dependencies
COPY . /code/
RUN pip install -r requirements.txt

EXPOSE 80:5000
