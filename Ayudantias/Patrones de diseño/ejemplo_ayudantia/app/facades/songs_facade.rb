class SongsFacade

    def initialize(songs)
        @songs = songs
    end

    def order_by_size
        @ordered_size_songs = @songs.order(size_mb: :desc)
    end
end