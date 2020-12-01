CarrierWave.configure do |config|
  config.storage                             = :gcloud
  config.gcloud_bucket                       = 'ducks-and-crackers'    # Better fetch this from environment variables
  config.gcloud_bucket_is_public             = true
  config.gcloud_authenticated_url_expiration = 600
#   config.gcloud_content_disposition          = 'attachment'          # or you can skip this
  
  config.gcloud_attributes = {
    expires: 600
  }
  
  config.gcloud_credentials = {
    gcloud_project: 'sesh',                              # Better fetch this from environment variables
    gcloud_keyfile: '../../../sesh-63aa6d2c3964.json'                       # Better fetch this from environment variables
  }
end
# ^^^^ the above 16 lines are adapted from
# https://nayan.co/blog/Ruby-on-Rails/how-to-upload-files-using-carrierwave-google-storage/