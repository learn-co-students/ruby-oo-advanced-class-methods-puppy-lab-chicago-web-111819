class Dog

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.print_all
        @@all.each {|dog|  puts dog.name}
    end

    def self.clear_all
        @@all.clear
    end


end