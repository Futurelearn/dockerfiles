FROM nginx

RUN mkdir -p /app/public/system/errors

RUN apt-get update && apt-get install -y netcat curl

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/default.conf.template
COPY maintenance.conf /etc/nginx/maintenance.conf.template
COPY json_log.conf /etc/nginx/conf.d/00_json_log.conf

ENTRYPOINT ["/opt/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
