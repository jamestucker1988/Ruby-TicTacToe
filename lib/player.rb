require_relative("./board")
class Player
  attr_reader :name, :sign
  @@store = [ ]
 
  
  end
  def self.store1
    @@store
  end
    def initialize(name, sign)
      @name = name
      @sign = sign
    @@store << @name
    end
