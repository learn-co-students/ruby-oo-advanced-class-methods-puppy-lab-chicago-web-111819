require 'pry'

class Dog
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
        save
        
        # p @@all
    end

    def self.all
        @@all.uniq
        # binding.pry
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        return @@all.map{|value| value.name}.uniq.each{|value_2|puts value_2}
    end

    def save
        @@all << self
    end

end

# a = Dog.new("Pluto") 
# b = Dog.new("Fido")
# c = Dog.new("Maddy")

# p a
# p b
# p c 
# p Dog.all