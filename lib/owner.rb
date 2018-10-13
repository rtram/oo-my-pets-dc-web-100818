require 'pry'

class Owner
  
  attr_accessor :human, :name, :pets
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(human)
    @human = human
    self.class.all <<  self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def self.reset_all 
    self.all.clear
  end 
  
  def self.count
    self.all.length
  end 
  
  def species
    self.human
  end 
  
  def say_species
    "I am a #{self.human}."
  end 
  
  def name
    @name
  end 
  
  def buy_fish(fish)
    name = Fish.new(fish)
    self.pets[:fishes] << name
  end 
  
  def buy_cat(cat)
    name = Cat.new(cat)
    self.pets[:cats] << name
  end 
  
  def buy_dog(dog)
    name = Dog.new(dog)
    self.pets[:dogs] << name
  end 
  
  def walk_dogs
    Dog.mood = "happy"
  end 
  
end