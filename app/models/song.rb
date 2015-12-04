class Song < ActiveRecord::Base
  attr_accessible :album_id, :song_name, :favorite
  scope :favorites, -> { where favorite: true }
  scope :similar_to, -> (to_this){ where("song_name like ?", '%' + to_this + '%') }
end
