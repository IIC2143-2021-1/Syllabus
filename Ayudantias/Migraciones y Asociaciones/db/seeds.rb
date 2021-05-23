# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Trainer.create(name: 'Jaime Navon', sex: 'Masculino', money: 3000, gym_leader: true)
Trainer.create(name: 'Macarena Peralta', sex: 'Femenino', money: 15000, gym_leader: true)
@jose= Trainer.create(name: 'Jose Antonio Castro', sex: 'Masculino', money: 10, gym_leader: false)
@felipe= Trainer.create(name: 'Felipe Fuentes', sex: 'Masculino', money: 5)

@pokemon1= @felipe.pokemons.create(name: 'Charizard', kind: 'Fuego', attack: 300, defense: 200, speed: 0.5)
@pokemon2= @jose.pokemons.create(name: 'Balstoise', kind: 'Agua', attack: 250, defense: 250, speed: 0.7)
@pokemon3= @felipe.pokemons.create(name: 'Magikarp', kind: 'Normal', attack: 0, defense: 1, speed: 0.1)
@pokemon4= @felipe.pokemons.create(name: 'Umbreon', kind: 'Oscuro', attack: 100, defense: 150, speed: 0.6)


@mordisco= Movement.create(name: 'Mordisco', power:20)
@pokemon1.movements << Movement.create(name: 'Lanzallamas', power:40)
@pokemon2.movements << Movement.create(name: 'Dormir', power:0)
@pokemon1.movements << @mordisco
@pokemon2.movements << @mordisco
@pokemon1.save
@pokemon2.save

