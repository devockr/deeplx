#!/bin/sh

echo """
events {
    multi_accept       on;
    worker_connections 65535;
}

http {
    server {
        listen      ${PORT};
        listen      [::]:${PORT};

        location / {
            proxy_pass http://127.0.0.1:80;
        }
  }
}
""" > /nginx.conf
cat /nginx.conf
nginx -c /nginx.conf
/deepl
