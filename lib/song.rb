require "pry"

class Song
  attr_accessor :song, :artist, :genre
  attr_reader :name
  @@all = []

  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new(song, artist, genre)
    new_song = Song.new(song, artist, genre)
    new_song.song = song
    new_song.artist = artist
    new_song.genre = genre
    Artist.all << new_song.artist
    Genre.all << new_song.genre
    @@all << self
  end


end
