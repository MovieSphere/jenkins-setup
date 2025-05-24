FROM jenkins/inbound-agent:latest-jdk17

USER root

# Instala dependencias y Terraform (última versión estable)
RUN apt-get update && \
    apt-get install -y wget unzip curl gnupg software-properties-common && \
    LATEST_TF=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | grep -oP '"current_version":\s*"\K[0-9\.]+') && \
    echo "Instalando Terraform $LATEST_TF" && \
    wget https://releases.hashicorp.com/terraform/${LATEST_TF}/terraform_${LATEST_TF}_linux_amd64.zip && \
    unzip terraform_${LATEST_TF}_linux_amd64.zip -d /usr/local/bin/ && \
    terraform -version && \
    rm terraform_${LATEST_TF}_linux_amd64.zip

USER jenkins