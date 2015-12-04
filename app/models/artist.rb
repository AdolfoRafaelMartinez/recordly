class Artist < ActiveRecord::Base
  attr_accessible :artist_name, :favorite
  scope :favorites, -> { where favorite: true }
  scope :similar_to, -> (to_this){ where("artist_name like ?", '%' + to_this + '%') }
end
