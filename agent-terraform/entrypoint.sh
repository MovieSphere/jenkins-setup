#!/bin/sh

# Esperar a que Jenkins esté disponible
until curl -sf http://jenkins:8080 > /dev/null; do
    echo "Esperando a que Jenkins esté disponible..."
    sleep 5
done

echo "Jenkins está disponible. Iniciando conexión..."

# Ejecutar el agente usando el jar que ya viene con la imagen
exec jenkins-agent 