class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    song_name = data[1]
    new_song = self.new(song_name)
    artist_name_parsed = data[0].to_s
    new_song.artist_name = artist_name_parsed
    new_song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
