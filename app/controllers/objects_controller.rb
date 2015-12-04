class ObjectsController < ApplicationController
  def get_query

  end

  def search
    query_string = params[:query_string]
    @songs = Song.similar_to query_string
    @albums = Album.similar_to query_string
    @artists = Artist.similar_to query_string
  end
end
