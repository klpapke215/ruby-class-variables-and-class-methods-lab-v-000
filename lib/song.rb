class Song
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end
  attr_accessor :name, :artist, :genre

  def Song.count
    @@count
  end

  def Song.artists
    @@artists.uniq
  end

  def Song.genres
    @@genres.uniq
  end

  def Song.genre_count
    genre_count = {}
    @@genres.each do |genre_name|
      if genre_count[genre_name]
        genre_count[genre_name] += 1
      else
        genre_count[genre_name] = 1
      end
    end
    genre_count
  end

  def Song.artist_count
  artist_count = {}
  @@artists.each do |artist|
    if artist_count[artist]
      artist_count += 1
    else
      artist_count[artist] = 1
    end
  end
  artist_count
end

end 
