class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    if self.find(name) != nil
      self.find(name)
      else
        self.new(name)
        self.save
    end
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end
