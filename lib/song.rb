class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}


  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre unless @@genres.include?(genre)
    @@artists << artist unless @@artists.include?(artist)

    if @@genre_count.keys.include?(:genre)
      count_genre = @@genre_count[:genre]
      updated_g = count_genre + 1
      @@genre_count[:genre] = updated_g
    else
      @@genre_count[:genre] = 1
    end


    if @@artist_count.keys.include?(:artist)
      count_artist = @@artist_count[:artist]
      updated_artist = count_artist + 1
      @@artist_count[:artist] = updated_artist
    else
      @@artist_count[:artist] = 1
    end



  end



  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count
    @@genre_count
  end


end
