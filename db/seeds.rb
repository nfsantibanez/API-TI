# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Crear datos iniciales para poblar un poco nuestra DB de la application

usuario1 = Usuario.create(usuario: "nfsantibanez", nombre:"Nicolas", apellido:"Santibanez", twitter: "@nfsantiba")
usuario2 = Usuario.create(usuario: "cacabrera", nombre:"Constanza", apellido:"Cabrera", twitter: "@ccabrera")
usuario3 = Usuario.create(usuario: "cmcastro", nombre:"Carmen", apellido:"Castro", twitter: "@pelucastro")
usuario4 = Usuario.create(usuario: "nacuna", nombre:"Norma", apellido:"Acuna", twitter: "@nacuna")
