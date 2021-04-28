require "csv"
require_relative "entrenador"
require_relative "pokemon"


# Este metodo lee los archivos y crea las instancias de pokemon dentro de cada entrenador
def instanciar_entrenadores
    instancias_entrenadores = []
    entrenadores = CSV.read "data/entrenadores.csv"
    entrenadores.shift
      
    pokemones = CSV.read "data/pokemon.csv"
    pokemones.shift
  
    entrenadores.each do |entrenador_info|
      entrenador = Entrenador.new entrenador_info[0], entrenador_info[1]
      ids_pokemon = entrenador_info[2, 6]
      pokemones_info = pokemones.filter { |p| ids_pokemon.include?(p[0])}
      ids_pokemon.each do |id_pok|
        entrenador.agregar_pokemon Pokemon.new *pokemones_info.find { |p| p[0] == id_pok } # el operador * separa el arreglo. en este caso separa el arreglo en 6 variables (porque el arreglo es de largo 6)
      end
      instancias_entrenadores << entrenador
    end
    instancias_entrenadores
  end