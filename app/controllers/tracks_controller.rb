require "google/cloud/storage"
class TracksController < ApplicationController
    def index
        tracks = Track.all
        # byebug
        render json: tracks
        # hm.  so carrierwave and active record store stuff non-serializable by defailt >> , include: [:link]
    end

    def create
        # gcloud = Gcloud.new("sesh-297301","/mnt/c/Users/ssats/Documents/GitHub/Phase3/project/Sesh/sesh-297301-646c2a16a5e6.json")
        gcloud = Gcloud.new("sesh-297301")
        storage = gcloud.storage
        # byebug
        bucket = storage.bucket 'ducks-and-crackers'
        # byebug
        file_url = params[:bucket_link].tempfile
        file_name = params[:bucket_link].original_filename
        resp = bucket.create_file(file_url)
        # byebug

        Track.create(link: file_name, bucket_link: file_url)
        render json: Track.last
    end
    # to get the file,
    # track = Track.find_by(whatever) 
    # the link is at: track.bucket_link.file.url

end
