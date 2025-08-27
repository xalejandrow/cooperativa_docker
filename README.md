## Cómo correr
### Desarrollo (local, con hot reload y volúmenes):
docker compose up -d

### Crear la estructura de la BD
NOTA: Después de tener ejecutado los contenedores, para crear la esctructura, ejecutar
docker exec cooperativa_nextjs_app npx prisma migrate dev


### Producción (en servidor, con MySQL y Next.js en build):
NODE_ENV=production docker compose -f docker-compose.yml -f docker-compose.prod.yml up 


## Comandos docker para trabajar con los contenedores

### Conectarse al contenedor de la app
docker exec -it cooperativa_nextjs_app bash

## Crear royecto NextJS solo nodejs
npx create-next-app@latest frontend --use-npm --javascript

## Para ver los logs 
docker compose logs

### Especificamente de un contenedor
docker compose logs nombre_contenedor
docker compose logs -f nombre_contenedor
docker compose logs -t

## Instalar Prisma y generar cliente

Dentro de frontend/:

npm install prisma @prisma/client
npx prisma generate
npx prisma migrate dev --name init

## Generar cliente Prisma y migrar
Dentro de frontend/: del contenedor
npx prisma generate
npx prisma migrate dev --name init

Esto crea la tabla User en MySQL.
npx prisma migrate push

### Cargar seeds
npm run prisma:seed
