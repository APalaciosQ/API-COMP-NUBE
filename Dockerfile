# Usar una versión específica de Node.js como base
FROM node:18

# Crear directorio de la aplicación
WORKDIR /backend

# Instalar dependencias de la aplicación
COPY package*.json ./
RUN npm install
# Descomentar la siguiente línea para producción
# RUN npm ci --only=production

# Copiar los archivos de la aplicación
COPY . .

# Compilar archivos TypeScript a JavaScript
RUN npm run build

# Tu aplicación se une a puerto 3000
EXPOSE 3000

# Comando para correr la aplicación
CMD [ "node", "dist/index.js" ]
