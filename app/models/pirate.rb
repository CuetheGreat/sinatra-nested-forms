

class Pirate

    attr_accessor :name, :weight, :height, :ships

    @@pirates = []

    def initialize(pirate)
        @name = pirate[:name]
        @weight = pirate[:weight]
        @height = pirate[:height]

        @ships = pirate[:ships].map do |ship_data|
            ship = Ship.new(ship_data)
            ship.pirate = self
            ship
        end
        @@pirates << self
    end

    def self.all
        @@pirates
    end

end