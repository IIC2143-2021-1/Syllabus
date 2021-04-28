
class Pokemon
  attr_reader :id, :nombre

  def initialize(id, nombre, vida_max, ataque, defensa, velocidad)
    @id = id
    @nombre = nombre
    @vida_max = vida_max.to_i
    @vida_actual = vida_max.to_i
    @velocidad = velocidad.to_i
    @defensa = defensa.to_i
    @ataque = ataque.to_i
  end

  # getter de atributo velocidad
  def vel
    @velocidad
  end

  # getter de atributo ataque
  def atq
    @ataque
  end

  # getter de atributo vida
  def vida
    @vida_actual
  end

  def def
    @defensa
  end

  # metodo que calcula el daño recibido en funcion de un ataque
  def recibir_daño(ataque)
    daño = (ataque - @defensa/4)
    if daño > 0 #Esto lo hago para asegurarme que si tuviera mucha defensa, el ataque no me sume vida
      @vida_actual -= daño
    end
  end

  # Reiniciar estado de la vida actual
  def curar
    @vida_actual = @vida_max
  end
end


