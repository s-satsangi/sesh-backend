class Track < ApplicationRecord
    has_many :track_songs
    has_many :songs, through: :track_songs
    mount_uploader :bucket_link, TrackUploader
    # https://nayan.co/blog/Ruby-on-Rails/how-to-upload-files-using-carrierwave-google-storage/
end
