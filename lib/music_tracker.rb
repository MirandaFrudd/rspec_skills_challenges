class MusicTracker
    def initialize
        @my_tracks = []
    end

    def add(my_track)
        @my_tracks << my_track
    end

    def view_tracks
        fail "there are no tracks in your library" if @my_tracks.empty?
        list_of_tracks = ""
        @my_tracks.each { |track| list_of_tracks += (track + "\n ") }
        return "I have listened to:\n #{list_of_tracks}"
    end
end