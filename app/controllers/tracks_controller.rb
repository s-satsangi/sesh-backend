class TracksController < ApplicationController
    def index
        tracks = Track.all
        render json: tracks, include: [:link]
    end
    def create
        # byebug
        # puts(params)
        # User.create(avatar: params[:image_file])
        Track.create(bucket_link: params[:_json])
    end
end
