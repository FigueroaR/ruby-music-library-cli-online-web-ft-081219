require 'pry'
class Song 
  extend Concerns::Findable

  attr_accessor :name, :artist
  attr_reader :genre
  @@all = []
  def initialize(name, artist = nil )
    @name = name 
    @artist = artist 
    save 
    #binding.pry
  end 
 
  def genre=(genre)
    genre.songs << self unless genre.songs.include?(self)
    @genre = genre 
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
  
  #def self.find_by_name(name)
    #@@all.detect{ |c| c.name== name}
    #binding.pry
  #end
  
  #def self.find_or_create_by_name(name)
    #self.find_by_name(name) || self.create_by_name(name)
  #end
  
  

end 