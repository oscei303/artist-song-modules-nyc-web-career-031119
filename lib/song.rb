require 'pry'

class Song

  # extend Memorable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   # self.class.all << self
  #   super
  # end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   self.all.count
  # end

  # ^^^^ these methods are now extended from the memorable module

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
