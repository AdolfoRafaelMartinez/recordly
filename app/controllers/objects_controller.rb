class ObjectsController < ApplicationController
  def search
    query_string = params[:query_string]
    @songs = Song.where query_string
  end
end
