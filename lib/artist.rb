class Artist
<<<<<<< HEAD
  @@all = []

  attr_accessor :name, :songs
=======
  attr_accessor :name, :songs
  @@all = []
>>>>>>> 5f38ae6da5ef0259eda4ea0324035e84298f60be

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

<<<<<<< HEAD
  def self.find(name)
    self.all.find{|artist| artist.name == name}
  end

  def self.create(name)
    artist = self.new(name)
=======

  def self.find(artist)
    self.all.find {|artist| artist.name == artist}
  end

  def self.create(artist)
    artist = self.new
>>>>>>> 5f38ae6da5ef0259eda4ea0324035e84298f60be
    artist.name = artist
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
<<<<<<< HEAD
    self.find(name) || self.create(name)
=======
    self.all == nil ? self.all = Artist.new(name) : self.all.name = name
>>>>>>> 5f38ae6da5ef0259eda4ea0324035e84298f60be
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
