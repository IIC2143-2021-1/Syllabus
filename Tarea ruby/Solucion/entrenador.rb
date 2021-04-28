
class Entrenador
  attr_reader :id, :nombre, :puntos, :pokemones

  def initialize(id, nombre)
    @id = id
    @nombre = nombre
    @pokemones = []
    @puntos = 0
    @pokemon_actual = 0 #atributo para saber cual es el pokemon que toca elegir
  end

  # setter de puntos
  def ganar_puntos(puntos)
    @puntos += puntos
  end

  # setter de pokemones
  def agregar_pokemon(pokemon)
    @pokemones << pokemon
  end

  # funcion para reiniciar el estado de los pokemones luego de un combate
  def curar_pokemones
    @pokemones.each do |pokemon|
      pokemon.curar
    end
    @pokemon_actual = 0
  end

  # entrega el siguiente pokemon en la lista y avanza el pokemon actual en 1
  def pokemon_actual
    actual = @pokemones[@pokemon_actual]
    @pokemon_actual += 1
    actual
  end
end
