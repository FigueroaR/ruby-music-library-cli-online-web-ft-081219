require 'pry'

class Song 
  #extend Concerns::Findable
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name 
   
    save 
    #binding.pry
  end 
  
  def self.all
    @@all 
  end
  
  def self.destroy_all
    @@all.clear 
  end
  
  def save 
    @@all << self 
  end  
  
  def self.create(name)
    self.new(name)
    #binding.pry 
    
  end 
  
  def self.find_by_name(name)
    @@all.detect{ |c| c.name== name}
    #binding.pry
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
end 