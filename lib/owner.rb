class Owner
  
  attr_accessor :human
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(human)
    @human = human
  end 
  
end