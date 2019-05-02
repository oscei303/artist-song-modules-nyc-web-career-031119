require 'pry'

class Artist

  # extend Memorable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    # self.class.all << self
    super
    @songs = []
  end

  #^^^^ we can call self.class.all inside .initialize and it will be just as if we called Song.all or Artist.all. Only this way, our code is abstract. It doesn't explicitly reference Song or Artist class, so it is more flexible.

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  #^^^ abstract @@artist to @@all so it could be extended from the Findable module

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
    # self.all.count
  # end

    # ^^^^ these methods are now extended from the memorable module

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
