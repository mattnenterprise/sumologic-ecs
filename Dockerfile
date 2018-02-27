FROM sumologic/collector:release-v19.209-8
LABEL maintainer="mattnenterprise@yahoo.com"

RUN apt-get update -q
RUN apt-get install -qy python-dev python-pip groff-base libyaml-dev
RUN pip install awscli
COPY scripts /scripts

ENTRYPOINT ["/bin/bash", "/scripts/runner.sh"]
