require "pry"

class Artist
  attr_accessor :name, :song #:genre
  @@all = []

  def initialize(name)
    @name = name
    @song = nil
    @@all << self
  end

  def self.all
    @@all
  end

  #Artist #new_song given a name and genre,
  #creates a new song associated with that artist
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  # Artist #songs has many song
  def songs
    Song.all.select do |song| #Song instance
      song.artist == self
    end
  end

  #artist has many genres, through songs
  def genres
    self.songs.map do |song|
      song.genre 
    end
  end

  def self.all
    @@all
  end

end
