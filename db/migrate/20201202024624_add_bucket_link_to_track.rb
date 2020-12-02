class AddBucketLinkToTrack < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :bucket_link, :string
  end
end
