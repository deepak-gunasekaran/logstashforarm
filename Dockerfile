FROM ind3x/rpi-logstash

COPY logstash.conf /etc/logstash/
RUN set -ex \
    if [ x${ELASTICHOST} != "x" ]; then \
    sed -i -r "s/ELASTICHOST/${ELASTICHOST}/g" /etc/logstash/logstash.conf 
    && sed -i -r "s/ELASTICPORT/${ELASTICPORT}/g" /etc/logstash/logstash.conf;\
    fi

CMD ["-f", "/etc/logstash/logstash.conf"]
