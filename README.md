# Delilah Resto - delivery de comida 
Proyecto 3 de Acamica - Desarollo web full stack

# Recursos y tecnologias utilizadas
- Node.js
- Nodemon
- Express
- JWT para autenticación via Token
- MySQL
- Sequelize
- Postman para manejo de endpoints y testing
- Swagger para documentación de API

El objetivo del trabajo es generar el backend de una app de pedidos de comida, generando la arquitectura, bases de datos relacionales, endpoints funcionales y documentación.

# Documentación de la API
Abrir el archivo openapi.yaml y copiar su contenido en <a href="https://editor.swagger.io/" rel="nofollow">Swagger</a> 

Se listarán los endpoints y métodos disponibles y la información necesaria para hacer uso de los mismos

# Instalación e inicializacion del proyecto
# 1 - Clonar proyecto
Clonar el repositorio desde el <a href="https://github.com/carbis1992/delilahresto" rel="nofollow">siguiente link</a>

Desde la consola con el siguiente link:

<code>git clone https://github.com/carbis1992/delilahresto.git</code>

# 2 - Instalación de dependencias
<code>npm install</code>

# 3 - Creando base de datos
- Abrir XAMPP y asegurarse que el puerto sobre el cual se está ejecutando es el 3306
- Inicializar los servicios de Apache y MySQL
- Abrir el panel de control del servicio MySQL
- Generar una nueva base de datos llamada delilah_resto desde el panel de control
- Abrir el archivo en /database/delilah-db.sql y dentro del panel de control de la base de datos ejecutar la serie de queries del archivo o importar el mismo.

# 4 - Iniciando el servidor
Abrir el archivo en <code>/server/server.js</code> desde node

<code>node server</code>

# 5 - Listo para usar!
Testear los endpoints provistos desde postman para poder hacer uso de la API y base de datos generadas
(Asegurarse de seleccionar el entorno de desarrollo Delilah Resto para poder acceder a las variables globales)

<a href="https://web.postman.co/collections/10616285-39674273-bb5d-4283-8d7f-a64e0d8b05c0?version=latest&workspace=bdb8223f-600f-4e0d-811e-aae1e47a9d61" rel="nofollow">Colección de Postman</a>

