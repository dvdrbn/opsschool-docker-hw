FROM alpine:3.9

LABEL maintainer="dvdrbnv22@gmail.com"

RUN apk add -U python3

COPY ./app /app

WORKDIR /app

RUN pip3 install -r requirements.txt 

EXPOSE 5000

ENTRYPOINT [ "python3", "app.py" ]