require 'pry'

class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    # creates a new song. That song should know that it belongs to the artist.
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select{ |song| song.artist == self}
  end

  def genres
    songs.map{ |song| song.genre}
  end
end