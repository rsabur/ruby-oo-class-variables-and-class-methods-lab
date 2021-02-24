require 'pry'

class Song
    # binding.pry

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def name
        @name
    end
    def artist
        @artist
    end
    def genre 
        @genre  
    end
# binding.pry
    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        # binding.pry
        @@genres.each do |genre|
            if @@genre_count[genre]
                @@genre_count[genre] += 1
            elsif
                @@genre_count[genre] = 1
            end
        end
        @@genre_count
    end

    def self.artist_count
        # binding.pry
        @@artists.each do |songs|
            @@artist_count[songs] ||= 0
            @@artist_count[songs] += 1
        end
        @@artist_count
    end

end