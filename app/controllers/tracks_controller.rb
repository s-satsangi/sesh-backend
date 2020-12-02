class TracksController < ApplicationController
    def index
        tracks = Track.all
        render json: tracks, include: [:link]
    end
    def create
        console.log("That tickles.")
    end
end
