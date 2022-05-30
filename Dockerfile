FROM zu1k/deepl:latest

COPY ./start.sh start.sh

EXPOSE ${PORT:-8080}

ENTRYPOINT [ "sh", "start.sh" ]
