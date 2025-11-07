# Imagen base
FROM python:3.9-slim

# Crear directorio de trabajo
WORKDIR /app

# Copiar dependencias
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del proyecto
COPY . .

# Establecer variable de entorno 
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=production

# Exponer el puerto
EXPOSE 5000

# Ejecutar 
CMD ["flask", "run"]
