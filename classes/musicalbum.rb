require 'date'
require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(label, genre, publish_date, on_spotify, author = nil)
    super(label, author, genre, publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super_result = super
    puts "In MusicAlbum: super: #{super_result} @on_spotify: #{@on_spotify} result: #{super_result && @on_spotify}"
    super_result && @on_spotify
  end
end
