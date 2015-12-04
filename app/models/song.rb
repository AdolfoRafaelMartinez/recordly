class Song < ActiveRecord::Base
  attr_accessible :album_id, :song_name, :favorite
end
