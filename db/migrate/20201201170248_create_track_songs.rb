class CreateTrackSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :track_songs do |t|
      t.references :track, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
