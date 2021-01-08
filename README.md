# README


Version Ruby: 2.6.6

En el archivo database.yml dentro de la carpeta de "config" se debe especificar el username y la contraseña, además del host y el puerto en el que estará alojada la base de datos para que se pueda conectar.


Inicializar la base de datos:(cmd) rails db:create db:migrate 

Inicializar base de datos con valores del seeding:(cmd) "rails db:seed"

Inicializar proyecto: (cmd) rails s

Si es la primera vez en ejecutar el proyecto, es probable que se tengan que instalar las gemas específicas para el proyecto: (cmd) bundle install

VISTA CLIENTES: 

En el localhost la vista por defecto es la vista para clientes

VISTA ADMINISTRADORES:

En la página inicial en la vista de clientes hay un botón con una llave en el menú superior. Para acceder a la vista de administrador, se deberá hacer click en el botón y rellenar con los siguientes valores para iniciar sesión:

email: admin@admin.com
contraseña: !daw-g4

Una vez hecho el log-in saldrá el menú con los 3 CRUD - eventos,pedidos y encargos, se podrá entrar desde el menú, o en su defecto, con sus URL:

Eventos: http://localhost:3000/eventos/index
Pedidos: http://localhost:3000/pedidos/index
Encargos: http://localhost:3000/encargos/index

Si se intenta entrar a los enlaces del CRUD sin haber realizado anteriormente el inicio de sesión, saldrá un error y direccionamiento a la página de log in .  