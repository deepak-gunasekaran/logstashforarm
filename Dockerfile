FROM ind3x/rpi-logstash

COPY logstash.conf /etc/logstash/

CMD ["-f", "/etc/logstash/logstash.conf"]
