class Trip

    @@all = []

    attr_accessor :listing, :guest

    def initialize(guest, listing )
      @guest = guest
      @listing = listing

      @@all << self
    end

    def display_listing
      self.listing
    end

    def display_guest
      self.guest
    end

    def self.all
      @@all
    end

end
