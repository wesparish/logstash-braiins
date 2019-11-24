#!/bin/bash

# Generate pipeline config
jinja2_standalone_compiler --path /scripts/pipeline_logstash.conf.j2 --out . --settings /scripts/settings.py
cp ./pipeline_logstash.conf.html pipeline/logstash.conf

# Run normal entrypoint
/usr/local/bin/docker-entrypoint
