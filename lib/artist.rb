class Artist

attr_accessor :name

@@all = []

  def self.find_by_name(name)
    @@all.detect{|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)

    if self.find_by_name(name) == nil
      Artist.new(name)
    else
      self.find_by_name(name)
    end
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def save
    @@all << self
  end

  def add_song(some_song)
    @songs << some_song
    some_song.artist = self
  end

  def songs
    @songs
  end

  def initialize(name)
    @songs = []
    @name = name
    self.save
  end

end
