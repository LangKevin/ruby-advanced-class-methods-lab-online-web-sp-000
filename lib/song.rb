class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def initialize

  end

  def self.new_by_name(name)

  end

  def save
    self.class.all << self
  end

end
