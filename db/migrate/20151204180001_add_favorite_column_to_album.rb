class AddFavoriteColumnToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :favorite, :boolean
  end
end
