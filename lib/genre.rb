class Genre
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end 

  def songs
     Song.all.select do |song| 
     song.genre == self
   end 
  end

  def artists    
    Artist.map do |artist|
    artist.genre
    end
  end
  
end