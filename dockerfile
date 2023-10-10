# Usa la imagen base oficial de Nginx
FROM nginx

# Copia tus archivos de configuración personalizados (si los tienes) al contenedor
# Si no tienes archivos personalizados, este paso es opcional
COPY nginx.conf /etc/nginx/nginx.conf

# Expone el puerto 80 para que el servidor web Nginx sea accesible
EXPOSE 80

# Comando para iniciar Nginx una vez que se ejecute el contenedor
CMD ["nginx", "-g", "daemon off;"]
