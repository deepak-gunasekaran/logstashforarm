FROM ind3x/rpi-logstash
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
COPY logstash.conf /etc/logstash/

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["-f", "/etc/logstash/logstash.conf"]
