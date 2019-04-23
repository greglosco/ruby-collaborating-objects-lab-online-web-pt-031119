class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file_name)
    artist, song = file_name.split(" - ")
    new_song = self.new(song)
    new_artist = Artist.find_or_create_by_name(artist)
    new_song.artist = new_artist
    new_song
  end
  
end