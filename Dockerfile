FROM alpine

RUN apk update && apk add python mongodb-tools && mkdir /app
ENV INTERVAL=daily

WORKDIR /app
RUN wget https://storage.googleapis.com/pub/gsutil.tar.gz && tar -xf gsutil.tar.gz

COPY . ./
RUN chmod +x *.sh

CMD [ "/app/main.sh" ]
