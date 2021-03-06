FROM jenkins/jnlp-slave

USER root

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get -y install \
       libffi-dev \
       libpq-dev \
       libssl-dev \
       python \
       python-dev \
       python-pip \
       python-setuptools \
       python-venv \
       python-wheel \
       python3 \
       python3-dev \
       python3-pip \
       python3-setuptools \
       python3-venv \
       python3-wheel \
       build-essential \
       docker \
    && rm -rf /var/lib/apt/lists/* \
    && curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo \
    && chmod a+x /usr/local/bin/repo

USER jenkins
