require 'pry'

class Owner
  
  attr_accessor :human
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(human)
    @human = human
    self.class.all <<  self
  end 
  
  def self.reset_all 
    self.all.clear
  end 
  
  def self.count
    self.all.length
  end 
  
  def species
    
  end 
  
end