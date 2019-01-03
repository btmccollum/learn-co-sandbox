require 'pry'
require 'benchmark'

puts Benchmark.measure{

BARTENDERS = []

class Bartender
  attr_accessor :name
  
  def initialize(name) #private method
    @name = name
    BARTENDERS << self
  end
  
  def intro  #public method, can be called from outside the scope of the class declaration, called by an explicit receiver
    "Hello, my name is #{name}!"
  end
  
  def self.all #public method, can be called from outside the scope of the class declaration, called by an explicit receiver
    BARTENDERS
  end
  
  def make_drink
    @cocktail_ingredients = []
    choose_liquor
    choose_mixer
    choose_garnish
    return "Here is your drink. It contains #{@cocktail_ingredients}."
  end
  
  private
  
  def choose_liquor #private, your instance of the class is the implicit receiver , can also be done as self.choose_liquor
    @cocktail_ingredients.push("Whiskey")
  end
  
  def choose_mixer #private, your instance of the class is the implicit receiver
    @cocktail_ingredients.push("Vermouth")
  end
  
  def choose_garnish #private, your instance of the class is the implicit receiver
    @cocktail_ingredients.push("Olives")
  end

end
}
binding.pry