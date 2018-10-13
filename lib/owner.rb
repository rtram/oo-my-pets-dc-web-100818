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
    name = Fish.new(fish.name)
    self.pets[:fish] = fish.name
    binding.pry
  end 
  
end