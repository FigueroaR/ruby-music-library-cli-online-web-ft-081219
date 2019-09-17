require 'pry'
module Concerns
  module Findable
    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    binding.pry 
    end
    
    def find_or_create_by_name(name)
      self.find_by_name.all(name) || self.create_by_name.all(name)
    end
  end 
end 