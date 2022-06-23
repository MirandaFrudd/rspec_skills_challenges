# DESCRIBE THE PROBLEM
As a user
I can keep track of my music listening
I can add tracks I've listened to
I can view a list of them.

# DESIGN THE CLASS INTERFACE 

class MusicTracker

def intialize
# empty array of tracks
end

def add(tracks)
# add my tracks to a list
end

def view_tracks
# return a list of the tracks added
end

end


# CREATE EXAMPLE TESTS

# 1 - add a track to my list and view it
track = Track.new
track.add("my song 1") => have added "my song 1" to a list
track.view_tracks => "I have listened to:\n my song 1"


# 3 - return my tracks formatted as a list when calling #view_tracks
track = Track.new
track.add("my song 1") => have added "my song 1" to a list
track.add("my song 2") => have added "my song 2" to a list
track.view_tracks => "I have listened to:\n my song 1 \n my song 2"

# 4 - return an error if #my_tracks is called but the list is empty
track = Track.new
track.view_tracks => "there are no tracks in your library"

