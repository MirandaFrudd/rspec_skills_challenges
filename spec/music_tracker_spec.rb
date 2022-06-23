require 'music_tracker'

RSpec.describe MusicTracker do
    context '#add will add music' do
        it 'return one added track' do
            track = MusicTracker.new
            track.add('my song 1')
            result = track.view_tracks
            expect(result).to eq "I have listened to:\n my song 1\n "
        end

        it 'return two added tracks' do
            track = MusicTracker.new
            track.add('my song 1')
            track.add('my song 2')
            result = track.view_tracks
            expect(result).to eq "I have listened to:\n my song 1\n my song 2\n "
        end

        it 'fails if we return #view_tracks when no tracks have been added' do
            track = MusicTracker.new
            expect{ track.view_tracks }.to raise_error "there are no tracks in your library"
        end
    end
end