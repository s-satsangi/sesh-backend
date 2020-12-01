class TrackSong < ApplicationRecord
  belongs_to :track
  belongs_to :song
end
