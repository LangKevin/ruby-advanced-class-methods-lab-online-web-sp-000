class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def initialize

  end
  def self.create
    song = self.new
    @@all << song
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    song = find_by_name(name)
    if song == nil
      song = create_by_name(name)
    end
    song
  end

  def self.alphabetical
    @@all.sort! { |x,y| x.name.downcase <=> y.name.downcase }
  end

  # describe '.new_from_filename' do
  #   it 'initializes a song and artist_name based on the filename format' do
  #     song = Song.new_from_filename("Thundercat - For Love I Come.mp3")
  def new_from_filename(file)
    art_name, name = file.split(" - ")
    song = self.new
    song.name = name
    artist_name = art_name
    @@all << song
    song
  end
end
