# README


Version Ruby: 2.6.6


Inicializar la base de datos:(cmd) rake db:create db:migrate 

Inicializar base de datos con valores del seeding:(cmd) "rails db:seed"

Inicializar proyecto: (cmd) rails s

Si es la primera vez en ejecutar el proyecto, es probable que se tengan que instalar las gemas específicas para el proyecto: (cmd) bundle install

VISTA CLIENTES: 

En el localhost la vista por defecto es la vista para clientes

VISTA ADMINISTRADORES:

Para administradores, en la ruta habrá que poner lo siguiente:

http://localhost:3000/login/admin

Siendo localhost:3000 el puerto en el que el proyecto está ejecutado. Al iniciar sesión con el usuario especificado (usuario: admin // contraseña: !daw-g4) se redireccionará a el menú de administrador para manejar los Eventos y los Pedidos (CRUD).