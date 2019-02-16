#!/bin/bash

set -e

# Add logstash as command if needed
if [ "${1:0:1}" = '-' ]; then
	set -- logstash "$@"
fi

# Run as user "logstash" if the command is "logstash"
if [ "$1" = 'logstash' ]; then
#if [ "$ELASTICSEARCH_URL" ]; then
		sed -ri "s|ELASTICHOST|${ELASTICHOST}|g" /etc/logstash/logstash.conf
		sed -ri "s|ELASTICPORT|${ELASTICPORT}|g" /etc/logstash/logstash.conf
#	fi
	set -- gosu logstash "$@"
fi

exec "$@"
