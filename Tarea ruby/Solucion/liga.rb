require_relative "leer_archivos"
require_relative "combate"

class Liga
  attr_reader :entrenadores, :combates
  
  def initialize
    @entrenadores = instanciar_entrenadores
    @combates = []
  end

  # Se encarga de manejar la cantidad de combates y cuales se realizaran. Gracias a este metodo cada
  # entrenador combate 1 sola vez con cada uno de los otros entrenadores
  def realizar_combates
    length = @entrenadores.length
    (0..length - 1).each do |entrenador1|
      (entrenador1 + 1..length - 1).each do |entrenador2|
        combatir([@entrenadores[entrenador1], @entrenadores[entrenador2]])
      end
    end
  end

  # Metodo que se encarga de la logica del combate
  def combatir(entrenadores_combate) # entrenadores_combate = [entrenador1, entrenador2]
    pok_ini_entrenador1 = entrenadores_combate[0].pokemon_actual
    pok_ini_entrenador2 = entrenadores_combate[1].pokemon_actual

    #arreglo de pokemones combatiendo
    pok_combatientes = [pok_ini_entrenador1, pok_ini_entrenador2]

    # Este if revisa quien partirá atacando
    if pok_ini_entrenador1.vel > pok_ini_entrenador2.vel
      turnos = [0, 1].cycle #cycle sirve para crear un arreglo que se repite n cantidad de veces (en este caso es infinito) 
    elsif pok_ini_entrenador1.vel < pok_ini_entrenador2.vel
      turnos = [1, 0].cycle
    else
      if entrenador1.id < entrenador2.id
        turnos = [0, 1].cycle
      else
        turnos = [1, 0].cycle
      end
    end

    # este while revisa si aun quedan pokemones con vida en cualquiera de los dos equipos
    while pok_combatientes[0] != nil && pok_combatientes[1] != nil
      ataca = turnos.next #al hacer next este valor a a variar entre 0 y 1 cada vez que se ejecuta next
      # posicion del defensor de este turno en el arreglo de pokemones combatiendo
      defensor = turnos.next

      pok_combatientes[defensor].recibir_daño(pok_combatientes[ataca].atq)
      #Logica de cuando un pokemon muere
      if pok_combatientes[defensor].vida <= 0
        pok_combatientes[defensor] = entrenadores_combate[defensor].pokemon_actual
        #sumar puntos por derrotar a un pokemon
        entrenadores_combate[ataca].ganar_puntos 1
        
      end

      #Si no hago esto, en la proxima iteracion el pokemon atacante no cambiara porque
      #ejecute next 2 veces en el mismo turno
      turnos.next
    end
    #finaliza el combate

    # Obtiene un arreglo con los ids de los pokemones sobrevivientes
    # uso filter para retornar un arreglo con los pokemones que quedaron vivos
    # uso map para retornar un arreglo con los ids de los pokemones filtrados
    pokemones_vivos = (entrenadores_combate[ataca].pokemones.filter { |p| p.vida > 0 }).map { |p| p.id }
    
    #sumar puntos por ganar
    entrenadores_combate[ataca].ganar_puntos 3
   
    # creo la instancia del combate con los datos obtenidos y se lo agrego al atributo @combates
    @combates << Combate.new(entrenadores_combate[0].id,
                             entrenadores_combate[1].id,
                             entrenadores_combate[ataca].id,
                             pokemones_vivos)

    # Reinicio el estado de los pokemones
    entrenadores_combate.each do |e|
      e.curar_pokemones
    end
  end
end

