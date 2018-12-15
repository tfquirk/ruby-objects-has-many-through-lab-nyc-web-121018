require "pry"

class Genre

  attr_accessor :name, :song #artists
  @@all = []

  def initialize(name)
    @name = name
    @song = nil
    @@all << self
  end

  def self.all
    @@all
  end

  #needs an instance method, #songs, that iterates
  #through all songs and finds the songs that belong to that genre
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  #needs an instance method, #artists, that iterates over
  #the genre's collection of songs and collects the artist
  #that owns each song
  def artists
    self.songs.map do |song|
      song.artist
    end
  end

end
