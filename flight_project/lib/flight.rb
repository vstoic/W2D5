
require_relative "passenger"

class Flight
    
    attr_reader :passengers 
    def initialize(str, num)
        @flight_number = str
        @capacity = num
        @passengers = []
    end

    def full?
        if @capacity == @passengers.length
            return true
        end
        false
    end

    def board_passenger(passenger)
        if !self.full? && passenger.has_flight?(@flight_number)
            @passengers << passenger
        end
    end

    def list_passengers
        names = []
        @passengers.each do |person|
            names << person.name
        end
        names
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end
end