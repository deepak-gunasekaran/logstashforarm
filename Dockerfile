FROM ind3x/rpi-logstash

COPY logstash.conf /etc/logstash/
RUN pwd

CMD ["-f", "/etc/logstash/logstash.conf"]
