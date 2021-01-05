# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
evento1 = Evento.create(nombre: "Boda", 
    descripcion: "Asegúrate que uno de los mejores días de tu vida salga lo mejor posible con nuestra variedad de dulces y mesas.",
    img1: "eventos/boda4.jpg",
    img2: "eventos/boda2.jpg",
    img3: "eventos/boda5.jpg")
evento2 = Evento.create(nombre: "Bautizo", 
    descripcion: "Un momento que sólo pasa una vez en la vida, con nuestra ayuda será un evento aún mejor.",
    img1: "eventos/bautizo2.jpg",
    img2: "eventos/bautizo3.jpg",
    img3: "eventos/bautizo1.jpg")
evento3 = Evento.create(nombre: "Comunión", 
    descripcion: "Haz un poco más dulce este día tan especial",
    img1: "eventos/comunion1.jpg",
    img2: "eventos/comunion2.png",
    img3: "eventos/comunion3.jpg")
evento4 = Evento.create(nombre: "Cumpleaños", 
    descripcion: "Cuando cumplas años o cualquier día, nosotros siempre te damos alegría.",
    img1: "eventos/cumple5.jpg",
    img2: "eventos/cumple2.jpg",
    img3: "eventos/cumple1.jpg")
evento5 = Evento.create(nombre: "Baby showers", 
    descripcion: "Celebra y comparte la dulce espera rodeada de dulzuras. Un día que será difícil de olvidar.",
    img1: "eventos/bs5.jpg",
    img2: "eventos/bs6.jpg",
    img3: "eventos/bs7.jpg")

pedido1 = Pedido.create(nombre: "Francisco", 
            apellido: "Rodríguez", 
            email: "franrodri@gmail.com", 
            domicilio: "c/León y Castillo 28", 
            CP:"33000", 
            fechaEntrega:"05/02/2021", 
            comentario:"Me encantaría que llegase sobre el mediodía", 
            tuPedido: "Galletas 
            - Número: 50 
            - Tamaño: Medianas 
            - Sabor: Vainilla 
            - Decorado: básico")


pedido2 = Pedido.create(nombre: "Pepe", 
            apellido: "Martínez", 
            email: "pepemarti@gmail.com", 
            domicilio: "c/San Juan 28", 
            CP:"33020", 
            fechaEntrega:"29/01/2021", 
            comentario:"Nada más que añadir", 
            tuPedido: "Cupcakes
            - Número: 18
            - Tamaño: Grandes
            - Sabor: Red Velvet
            - Buttercream: Nata
           ")


pedido2 = Pedido.create(nombre: "Irene", 
            apellido: "García", 
            email: "irenegarca5@gmail.com", 
            domicilio: "c/ Triana", 
            CP:"33100", 
            fechaEntrega:"20/02/2021", 
            comentario:"Trabajo de 8:00 a 14:00 así que no podré recoger el pedido antes", 
            tuPedido: "Tartas
            - Número de personas: 20
            - Sabor del bizcocho: Chocolate
            - Buttercream: Mango")
