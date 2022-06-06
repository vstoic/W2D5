class Passenger
 
        attr_reader :name 
    #     attr_writer 
        # attr_accessor :name :flight_numbers

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(str)
        @flight_numbers.each do |flight|
            if flight.downcase == str.downcase
                return true
            end
        end
        false
    end

    def add_flight(str)
        if !has_flight?(str)
            @flight_numbers << str.upcase
        end
    end

end

