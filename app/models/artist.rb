class Artist < ActiveRecord::Base
  attr_accessible :artist_name, :favorite
  scope :favorites, -> { where favorite: true }
end
