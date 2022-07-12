# !/bin/bash
# Programa para ejemplificar el uso de la descarga de información desde internet utilizando el comando wget

echo "Descargar información de internet"
wget https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.35/bin/apache-tomcat-8.5.35.zip

# Usar:
# Para archivos pequeños ~> wget
# Para comunicarse con un servicio (por ejemplo, una API Restful) ~> curl
# Para archivos de tamaño considerable ~> aria2
