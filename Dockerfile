FROM zu1k/deepl

COPY ./start.sh /start.sh

RUN apk update && apk add curl nginx

ENV PORT=8080

EXPOSE $PORT

ENTRYPOINT ["sh", "/start.sh"]
