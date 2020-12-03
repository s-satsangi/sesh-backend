CarrierWave.configure do |config|
  config.storage                             = :gcloud
  config.gcloud_bucket                       = 'ducks-and-crackers'    # Better fetch this from environment variables
  config.gcloud_bucket_is_public             = true
  config.gcloud_authenticated_url_expiration = 600
  config.gcloud_content_disposition          = 'attachment'          # or you can skip this
  
  # config.fog_credentials = {
  # }
  
  # config.fog_directory = "ducks-and-crackers"
  
  config.gcloud_attributes = {
    expires: 600
  }
  
  config.gcloud_credentials = {
    gcloud_project: 'sesh-297310',                              # Better fetch this from environment variables
    gcloud_keyfile: '/mnt/c/Users/ssats/Documents/GitHub/Phase3/project/Sesh/sesh-297301-646c2a16a5e6.json'                       # Better fetch this from environment variables
    # gcloud_keyfile: '63aa6d2c3964aa0751556f7a196f4884fc161217',
    # provider:                         'Google'
    # google_storage_access_key_id:     "GOOG3RNEYZ4F6XTDJT53VCVO",
    # google_storage_secret_access_key: "8fyCxoHG8iF3xISsr5nVlADu/gXfU1fPPelWqcok"
  }
end
# ^^^^ the above 16 lines are adapted from
# https://nayan.co/blog/Ruby-on-Rails/how-to-upload-files-using-carrierwave-google-storage/