class Passenger
    attr_reader :name
    def initialize(name)
        @name = name 
        @flight_numbers = []
    end

    def has_flight?(str)
        @flight_numbers.any? {|tic| tic.downcase == str.downcase}

    end
    
    def add_flight(str)
        @flight_numbers << str.upcase if !self.has_flight?(str)
        
    end




end