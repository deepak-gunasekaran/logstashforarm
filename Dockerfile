FROM ind3x/rpi-logstash

COPY logstash.conf /etc/logstash/
RUN sed -i -r "s/ELASTICHOST/${ELASTICHOST}/g" /etc/logstash/logstash.conf
RUN sed -i -r "s/ELASTICPORT/${ELASTICPORT}/g" /etc/logstash/logstash.conf
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["-f", "/etc/logstash/logstash.conf"]
