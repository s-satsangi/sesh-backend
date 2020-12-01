class Track < ApplicationRecord
    mount_uploader :link, TrackUploader
    # https://nayan.co/blog/Ruby-on-Rails/how-to-upload-files-using-carrierwave-google-storage/
end
