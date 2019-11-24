FROM docker.elastic.co/logstash/logstash-oss:7.3.0

USER root

RUN curl -LO "https://bootstrap.pypa.io/get-pip.py" && \
    chmod +x get-pip.py && \
    ./get-pip.py && \
    pip install jinja2 jinja2-standalone-compiler

COPY scripts/ /scripts

USER logstash

# Render custom pipeline.yml
ENTRYPOINT ["/scripts/entrypoint.sh"]

# Old logstash entrypoint
CMD ["/usr/local/bin/docker-entrypoint"]
