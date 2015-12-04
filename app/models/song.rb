class Song < ActiveRecord::Base
  attr_accessible :album_id, :song_name, :favorite
  scope :favorites, -> { where favorite: true }
end
