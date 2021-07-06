class Dog
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.each { |dog| puts dog.name }
    end

    def self.clear_all
        return self.all.clear
    end

    def save
        @@all << self
    end
end