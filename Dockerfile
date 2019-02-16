FROM ind3x/rpi-logstash

COPY logstash.conf /etc/logstash/
RUN sed -ri "s|ELASTICHOST|$ELASTICHOST|g" /etc/logstash/logstash.conf
CMD ["-f", "/etc/logstash/logstash.conf"]
