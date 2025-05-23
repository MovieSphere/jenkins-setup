FROM hashicorp/terraform:light

# Crear un usuario jenkins compatible
RUN addgroup jenkins && adduser -D -G jenkins jenkins

USER jenkins
WORKDIR /home/jenkins