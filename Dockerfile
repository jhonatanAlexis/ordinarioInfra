FROM python:3.9-slim

WORKDIR /app

# Copiar todos los archivos al contenedor
COPY . .

# Instalar Flask
RUN pip install --no-cache-dir flask

# Exponer el puerto 5000
EXPOSE 5000

# Configurar variables de entorno
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Comando para ejecutar la aplicación
CMD ["flask", "run"]