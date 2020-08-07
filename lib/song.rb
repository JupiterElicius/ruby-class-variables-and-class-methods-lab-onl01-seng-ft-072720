  class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
  end

  def self.count
    @@count
  end
  
  
  def self.artists
    @@artists.uniq
  end
  
  
  def self.genres
    @@genres.uniq
  end
  
  
  AHSA-WY7S-VTE8-KYKL-B8KB
  
  
  def self.artist_count
    Hash[*@@artists.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
  end
  
  
end
  
  