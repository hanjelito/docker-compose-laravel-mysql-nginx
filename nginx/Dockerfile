FROM debian:buster

# Instala Nginx y otras dependencias
RUN apt-get update && apt-get install -y \
    nginx \
    curl \
    git \
    unzip

# Configura Nginx
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Copia el código de tu aplicación a la imagen

# Define el directorio de trabajo
WORKDIR /var/www/html/

# Expone el puerto 80
EXPOSE 80

# Inicia el servidor web
CMD ["nginx", "-g", "daemon off;"]