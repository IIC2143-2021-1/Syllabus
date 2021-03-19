class Perratzo

  ### Attribute accessor for re-running the module using it uncommented ###
  # attr_accessor :piscolits
  
  def initialize(piscolits)  # __init__ method in python
    @piscolits = piscolits   # @attributes are instance attributes
  end
  
  ## Comment this method to see how the attribute accessor works ###
  # def piscolits  # Define a method named piscolits
  #   puts "Tengo #{@piscolits} piscolits"
  # end
end
  
class PerratzoTech < Perratzo  # Inherit from Perratzo

  def initialize(piscolits, dj_favorito)
    super(piscolits)  # Call Perratzo's initialize method
    @dj_favorito = dj_favorito
  end

  def techno  # Define a method named techno
    puts "Perro vamos a #{@dj_favorito} en la noche?"
  end
end

# Create standard Perratzo instance
perro = Perratzo.new(3)
perro.piscolits
# puts perro.piscolits

# ### This won't work unless the attribute accessor is uncommented ###
# ### and the piscolits method is commented ###
# perro.piscolits = 5  # If the method still exists, this will work but
#                      # calling perro.piscolits will call the method
# puts perro.piscolits  # This now calls the attribute instead of the method

# Create PerratzoTech instance
zorron = PerratzoTech.new(5, "Green Velvet")
zorron.piscolits
zorron.techno
