class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def genre 
    @genre
  end 
  
  def artist 
    Artist.all.select do |artist|
      artist.song == self
    end
  end 
end