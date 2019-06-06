class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def initialize

  end
  def self.create(name)
    song = self.new
    @@all << song
  end

  def self.new_by_name(name)
    song = self.new
    @name = name
  end

  def self.create_by_name(name)
    song = self.new
    @name = name
    @@all << song
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
    if song == nil
      false
    end
  end

  def save
    self.class.all << self
  end

end
