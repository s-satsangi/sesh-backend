class SongsController < ApplicationController
    def index
        #list all the songs as a happy lil json object
        songs = Song.all
        render json: songs
    end

    def create
        # ActionController::Parameters.permit_all_parameters = true
        # params.require(:song).permit_all_params = true
        # byebug
        new_song = Song.create(title: params[:song])
        TrackSong.create(track_id: params[:track1id], song_id: new_song.id )
        TrackSong.create(track_id: params[:track2id], song_id: new_song.id )

        render json: new_song
    end
end
