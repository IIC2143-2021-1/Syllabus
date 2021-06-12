# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###################################################
################### Juegos ########################
###################################################

Game.where(title: "Among Us").first_or_create!(
    rating: 21.3, size_mb: 1024, description: "Juego para sobrevivir la pandemia a costa de las amistades"
)

Game.where(title: "Gato").first_or_create!(
    rating: 21.3, size_mb: 1024,
    description: "No te acuerdas de la última vez que lo jugaste y tampoco es como que lo fueses a descargar"
)

Game.where(title: "Minecraft").first_or_create!(
    rating: 93.2, size_mb: 4096,
    description: "No lo descargues si quieres aprobar el semestre"
)

Game.where(title: "Fall Guys").first_or_create!(
    rating: 11.11111,
    size_mb: 10_000,
    description: "Muy Güeno"
)

Game.where(title: "Lego Star Wars The Complete Saga").first_or_create!(
    rating: 2000.1,
    size_mb: 5_000,
    description: "Cambiaron de lugar el bloque rojo que era imposible de encontrar"
)

Game.where(title: "Worms").first_or_create!(
    rating: 23.32,
    size_mb: 1024,
    description: "*acento británico* Special delivery! Fatality! I'll get you!"
)

Game.where(title: "Python").first_or_create!(
    rating: 100.2,
    size_mb: 2048,
    description: '"Library" en inglés es "biblioteca", no "librería".'
)

Book.where(title: "Jarri Poter").first_or_create!(
    rating: 10.10,
    size_mb: 20,
    description: "El libro que acompañó la infancia de todos (???)"
)

Book.where(title: "Jarri Poter").first_or_create!(
    author: "Jotaka Rouling",
    edition: 2,
    rating: 10.10,
    size_mb: 20,
    description: "El libro que acompañó la infancia de todos (???)"
)

Book.where(title: "The Martian").first_or_create!(
    author: "Andy Weir",
    edition: 1,
    rating: 100.10,
    size_mb: 20,
    description: "Librazo. Por favor léanlo"
)

Book.where(title: "Game of Thrones").first_or_create!(
    author: "Martin",
    edition: 2,
    rating: 3.10,
    size_mb: 21,
    description: "No cacho absolutamente nada de este libro"
)

Book.where(title: "El Amo de las Circunferencias").first_or_create!(
    author: "Jotaerrerre Tolquien",
    edition: 32,
    rating: 1002.10,
    size_mb: 2,
    description: "Versión completamente no pirata del libro clásico"
)

Guideline.where(test: "I1 IIC2143").first_or_create!(
    semester: 1,
    year: 2021,
    size_mb: 1,
    description: "muajajaja"
)

Guideline.where(test: "I2 IIC2143").first_or_create!(
    semester: 1,
    year: 2021,
    size_mb: 1,
    description: "muajajaja"
)

Guideline.where(test: "Ex IIC2143").first_or_create!(
    semester: 1,
    year: 2021,
    size_mb: 1,
    description: "muajajaja"
)

Guideline.where(test: "I1 IIC2413").first_or_create!(
    semester: 1,
    year: 2021,
    size_mb: 1,
    description: "muajajaja"
)

Guideline.where(test: "I2 IIC2413").first_or_create!(
    semester: 1,
    year: 2021,
    size_mb: 1,
    description: "muajajaja"
)

Guideline.where(test: "Ex IIC2413").first_or_create!(
    semester: 1,  # =>
    year: 2021,
    size_mb: 1,
    description: "muajajaja"
)

Song.where(title: "The Fox").first_or_create!(
    author: "Ylvis",
    album: "Ring-ding-ding-ding-dingeringeding!\nGering-ding-ding-ding-dingeringeding!\n Gering-ding-ding-ding-dingeringeding!",
    format: "mp3",
    rating: 4,
    size_mb: 2
)

Song.where(title: "Ella Programa Sola").first_or_create!(
    author: "Josefa España ft. Osuna",
    album: "IIC1103 2020-2",
    format: "mp3",
    rating: 1,
    size_mb: 2
)

Song.where(title: "Hadas y Dragones").first_or_create!(
    author: "Rapsodyvarius Antártica",
    album: "Hadas y Dragones",
    format: "mp3",
    rating: 3,
    size_mb: 2
)

Song.where(title: "Un Velero Llamado Libertad").first_or_create!(
    author: "José Luis Perales",
    album: "No tengo ni idea",
    format: "mp3",
    rating: 2,
    size_mb: 5
)

Song.where(title: "Claro Que Yes").first_or_create!(
    author: "Las Chiquitas RD",
    album: "No tengo ni idea",
    format: "mp3",
    rating: 2,
    size_mb: 3
)

Song.where(title: "Photograph").first_or_create!(
    author: "Ed Sheeran",
    album: "X",
    format: "mp3",
    rating: 5,
    size_mb: 7
)

Song.where(title: "Fiel").first_or_create!(
    author: "Los Legendarios, Wisin, Jhay Cortez",
    album: "No tengo ni idea",
    format: "mp3",
    rating: 2,
    size_mb: 5
)