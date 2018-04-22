class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name=song_name
    song
  end

  def self.create_by_name(song_name)
    song = self.create
    song.name=song_name
    song
  end

  def self.find_by_name(name)
    self.class.all.detect{|song| name == self.song.name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) == nil ? self.create_by_name(name) : self.find_by_name(name)
  end

  def self.alphabetical

  end

  def self.new_from_filename(filename)

  end

  def self.create_from_filename(filename)

  end

  def self.destroy_all
    self.all.clear
  end

end
