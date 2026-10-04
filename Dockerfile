FROM zu1k/deepl:latest@sha256:72b936d6c6ad7cc9e4e6c1e0c9ba1925cab04bfb298c4e1bdcba2d00a6978070

COPY ./start.sh start.sh

EXPOSE ${PORT:-8080}

ENTRYPOINT [ "sh", "start.sh" ]
