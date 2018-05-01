##### Venue should initialize with a title and city
##### Venue should have a method Venue.all method which returns all the instances of Venue


##### Venue should have a method Venue#concerts that lists all the concerts that have ever been performed in that venue

##### Venue should have a method Venue#bands that lists all the bands that have ever played in that venue

class Venue

  attr_reader :title, :city

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    # lists all the concerts that have ever been performed in that venue
    concerts = Concert.all.select do |concert|
      concert.venue == self
    end
    concerts
  end

  def bands
    # lists all the bands that have ever played in that venue
    self.concerts.map do |concert|
      concert.band
    end
  end


end
