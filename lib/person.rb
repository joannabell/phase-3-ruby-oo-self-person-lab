require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        @happiness = if value > 10
            10
        elsif value < 0
            0
        else 
            value
        end
    end      

    def hygiene=(value)
        @hygiene = if value > 10
            10
        elsif value < 0
            0
        else 
            value
        end
    end      

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid
        self.bank_account += amount
        "all about the Benjamins"
    end

    def take_bath
        self.hygiene += 4
    end

end

new_person = Person.new("Joanna")
