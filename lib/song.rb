require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  #def self.reset_all #this method could be refactored - class method
  #  self.all.clear
  #end

  #def self.count #this method could be refactored - class method
  #  self.all.count
  #end

  def artist=(artist)
    @artist = artist
  end

  def to_param #this method could be refactored - instance method
    name.downcase.gsub(' ', '-')
  end
end
