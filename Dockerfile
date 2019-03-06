FROM jenkins/jnlp-slave

USER root

ENV PYTHON_VERSION 3

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get -y install python${PYTHON_VERSION} \
       libffi-dev \
       libpq-dev \
       libssl-dev \
       python3-dev \
       python3-pip \
       python3-setuptools \
       python3-venv \
       python3-wheel \
       build-essential \
       docker \
    && rm -rf /var/lib/apt/lists/* \
    && ln -nsf /usr/bin/python${PYTHON_VERSION} /usr/bin/python \
    && curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo \
    && chmod a+x /usr/local/bin/repo

USER jenkins
