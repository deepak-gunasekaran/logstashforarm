FROM ind3x/rpi-logstash

COPY logstash.conf /etc/logstash/
RUN cat /etc/logstash/logstash.conf

CMD ["-f", "/etc/logstash/logstash.conf"]
