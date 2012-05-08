class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :year
      t.string :artist
      t.references :user

      t.timestamps
    end
  end
end
