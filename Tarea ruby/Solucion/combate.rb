
class Combate
  attr_reader :entrenadores, :ganador, :pokemones_vivos_ganador

  def initialize(entrenador1, entrenador2, ganador, sobrevivientes)
    @entrenadores = [entrenador1, entrenador2]
    @ganador = ganador
    @pokemones_vivos_ganador = sobrevivientes
  end
end