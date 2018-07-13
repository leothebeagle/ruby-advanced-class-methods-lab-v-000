class Song
  @@all = []
  attr_accessor :name, :artist_name

  def self.all
    @@all
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def save #instance method. an instance is able to add itself to the class roster that keeps track of all songs created.
    self.class.all << self
  end

end
