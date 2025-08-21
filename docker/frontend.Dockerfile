# Usamos Node.js 20.10
FROM node:20.10

# Directorio de trabajo
WORKDIR /app

# Copiar package.json e instalar dependencias
COPY ./frontend/package*.json ./
RUN npm install

# Copiar el resto del proyecto
COPY ./frontend ./

# Exponer puerto
EXPOSE 3000

# Comando por defecto
CMD ["npm", "run", "dev"]
