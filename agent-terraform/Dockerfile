FROM hashicorp/terraform:light

USER root
RUN apk add --no-cache openjdk11-jre curl

RUN addgroup jenkins && adduser -D -G jenkins jenkins

# Descarga el agente Jenkins
RUN curl -sO http://host.docker.internal:5040/jnlpJars/agent.jar

USER jenkins
WORKDIR /home/jenkins