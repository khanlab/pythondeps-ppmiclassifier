FROM python:3.9-slim-buster
MAINTAINER <ali.khan@uwo.ca>

COPY . .

RUN apt-get update && apt-get install -yq g++ && apt-get clean && rm -rf /var/lib/apt/lists/* && pip install --no-cache-dir . 
