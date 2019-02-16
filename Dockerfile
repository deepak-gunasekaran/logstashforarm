FROM ind3x/rpi-logstash

COPY logstash.conf /etc/logstash/
RUN set -x \
    && sed -ri "s|ELASTICHOST|'"$ELASTICHOST"'|g" /etc/logstash/logstash.conf
    && sed -ri "s|ELASTICPORT|'"$ELASTICPORT"'|g" /etc/logstash/logstash.conf

CMD ["-f", "/etc/logstash/logstash.conf"]
