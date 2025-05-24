FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y curl docker.io \
    && rm -rf /var/lib/apt/lists/*

# Agregar jenkins al grupo docker
RUN groupadd -f docker
RUN usermod -aG docker jenkins

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

COPY casc.yaml /usr/share/jenkins/ref/casc.yaml
ENV CASC_JENKINS_CONFIG=/usr/share/jenkins/ref/casc.yaml

# Establecer permisos correctos para el socket de Docker
RUN chmod 666 /var/run/docker.sock || true

USER jenkins
