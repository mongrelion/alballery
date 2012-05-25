class AddCoverSecureTokenToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :cover_secure_token, :string
  end
end
