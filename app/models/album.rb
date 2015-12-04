class Album < ActiveRecord::Base
  attr_accessible :album_name, :artist_id, :favorite
  scope :favorites, -> { where favorite: true }
  scope :similar_to, -> (to_this){ where("album_name like ?", '%' + to_this + '%') }
end
