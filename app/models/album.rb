class Album < ActiveRecord::Base
  attr_accessible :album_name, :artist_id
end