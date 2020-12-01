class ApplicationController < ActionController::API
    def index
        tracks = Track.all
        render json: tracks, include: [:link]
    end
end