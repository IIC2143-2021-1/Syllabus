require "set"
require_relative "liga"

# Esta clase tiene como objetivo encargarse de los metodos de estadisticas pedidos en el enunciado.
# Esto se hace para aumentar la cohesion y disminuir el acoplamiento
class Estadisticas

  def initialize
    @liga = Liga.new
    @liga.realizar_combates
  end

  def entrenadores_liga
    File.open("output.txt", "a") do |file|
      file.puts "COMIENZO ENTRENADORES LIGA"
      @liga.entrenadores.each do |e|
        pok_strings = e.pokemones.map { |p| "{#{p.nombre}}"}
        file.puts "{#{e.nombre},#{e.puntos}}#{pok_strings.join("")}"
      end
      file.puts "FIN ENTRENADORES LIGA"
    end
  end

  def top_entrenadores
    #Ordeno a los entrenadores por sus puntos y en acso de empate segun sus ids
    entrenadores = @liga.entrenadores.sort do |e1, e2| 
      if e1.puntos > e2.puntos
        -1
      elsif e1.puntos < e2.puntos
        1
      else
        if e1.id < e2.id
          -1
        elsif e1.id > e2.id
          1
        else
          0
        end
      end
    end

    File.open("output.txt", "a") do |file|
      file.puts "COMIENZO TOP ENTRENADORES"
      entrenadores[0, 5].each do |e|
        file.puts "{#{e.id},#{e.nombre},#{e.puntos}}"
      end
      file.puts "FIN TOP ENTRENADORES"
    end
  end

  def top_pokemones
    pokemonSet = Set.new
    #inject es equivalente al reduce en python.
    #Estoy haciendo un arreglo con todos los pokemones que tienen los entrenadores
    #El ([]) sirve para decir que el valor inicial sera un arreglo vacio que despues le ire agregando cosas
    #En este caso le concateno una lista de pokemones.
    pokemones_de_entrenadores = @liga.entrenadores.inject([]) { |arreglo, e| arreglo.concat(e.pokemones) }
    pokemones_de_entrenadores.each do |p|
      #Cuento la cantidad de combates que incluyen el id del pokemon en la lista de sobrevivientes.
      cantidad = @liga.combates.count { |c| c.pokemones_vivos_ganador.include? p.id }
      #Le agrego al set el string un arreglo que tiene el string que quiero mostrar, la cantidad de
      #veces que aparece y su id
      pokemonSet << ["{#{p.nombre},#{cantidad}}", cantidad, p.id.to_i]
    end
    #Convierto el set de pokemones a una lista para poder ordenarlo y despues lo ordeno segun
    #El criterio del enunciado, que es que se muestren primero los pokemones que tienen mayor
    #numero de combates sobrevividos y en caso de empate se elige el con mejor id.
    pokemones_ordenados = pokemonSet.to_a.sort do |p1, p2|
      if p1[1] > p2[1]
        -1
      elsif p1[1] < p2[1]
        1
      else
        if p1[2] < p2[2]
          -1
        elsif p1[2] > p2[2]
          1
        else
          0
        end
      end
    end
    File.open("output.txt", "a") do |file|
      file.puts "COMIENZO TOP POKEMONES"
      pokemones_ordenados[0, 3].each do |p|
        file.puts p[0]
      end
      file.puts "FIN TOP POKEMONES"
    end
  end

end

est = Estadisticas.new
est.entrenadores_liga
est.top_entrenadores
est.top_pokemones
