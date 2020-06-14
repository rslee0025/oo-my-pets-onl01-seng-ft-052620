require_relative ('cat')

class Owner
  attr_reader :name, :species
  
  @@all = []     #all the owners
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
    @pets = {cats: [], dogs: []}
    
  end
  
  def say_species
    "I am a #{species}."
  end

  def self.all 
    @@owners
  end

  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end


  def self.all
    @@all
  end
   
   def cats
      @pets.map { |cats:| Cat.name == Owner.cats }
   end
   

 
 
end