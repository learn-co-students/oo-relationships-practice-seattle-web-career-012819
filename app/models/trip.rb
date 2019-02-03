class Trip
    @@all = []
    attr_accessor :location, :listing, :guest
    
    def initialize(location, listing, guest)
        @location = location
        @listing = listing
        @guest = guest
        @@all << self
    end

    def listings
        self.listing
    end

    def guests
        self.guest
    end

    def self.all
        @@all
    end
end