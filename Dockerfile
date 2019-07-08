FROM alpine

RUN apk update && apk add python mongodb-tools && mkdir /app

WORKDIR /app
RUN wget https://storage.googleapis.com/pub/gsutil.tar.gz && tar -xf gsutil.tar.gz
COPY . ./
RUN chmod +x *.sh

CMD [ "/app/main.sh" ]
