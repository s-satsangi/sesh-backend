class Song < ApplicationRecord
    has_many :track_songs
    has_many :tracks, through: :track_songs
end
