######### Band should initialize with a name and hometown

######### Band should have a Band#name and Band#hometown and a band should be able to change it's name

##### Band should have a method Band.all that returns all the instances of Band


##### Band should have a method Band#play_in_venue that takes a venue and date as a string as arguments and associates the band to that venue


##### Band should have a method Band#concerts should return an array of all that band's concerts

##### Band should have a method Band#venues that returns an array of all the venues the band has concerts in

# Band should have a method Band.all_introductions that puts out a message of "Hello, we are {insert band name here} and we're from {insert hometown here}" for each band


class Band

  attr_accessor :name
  attr_reader :hometown

  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

  def self.all
    @@all
  end

  def play_in_venue(venue, date)
    # takes a venue and date as a string as arguments and associates the band to that venue

    if Concert.all.any? {|concert|  concert.venue == venue && concert.date == date}
      puts "ya booked!"
    else
      Concert.new(date, self, venue)
    end
  end


  def concerts
    # return an array of all that band's concerts
    Concert.all.select do |concert|
      concert.band == self
    end

  end

  def venues
    # returns an array of all the venues the band has concerts in
    self.concerts.map do |concert|
      concert.venue
    end
  end

  # Band should have a method Band.all_introductions that puts out a message of "Hello, we are {insert band name here} and we're from {insert hometown here}" for each band

  def self.all_introductions
    all.each do |band|
      puts "Hello, we are #{band.name} and we're from #{band.hometown}"
    end
  end

  




end
