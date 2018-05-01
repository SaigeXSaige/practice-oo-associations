### Concert should have a Concert.all method which returns all the instances of Concert
#### Concert should initialize with a date, band, and venue
#### Concert should have methods Concert#band and Concert#venue that return the band and venue associated to the Concert
#### Concert should have a method Concert#hometown_show? that returns true if the concert is in the band's hometown


class Concert

  attr_accessor :date, :band, :venue

  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end

  def self.all
    @@all
  end

  def hometown_show?
    # returns true if the concert is in the band's hometown
    self.venue.city == self.band.hometown
  end

  def introduction
    if self.hometown_show?
      puts "Hello, we are #{band.name} and we're happy to be home in #{venue.city}!"
    else
      puts "Hello, we are #{band.name} and we're happy to be in #{venue.city}."
    end
  end


end
