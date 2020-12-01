class ApplicationController < ActionController::API
    def index
        tracks = Track.all
        rrender json: tracks, include: [:link]
    end
end
