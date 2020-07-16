class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.boolean :published
      t.belongs_to :playlist
      t.belongs_to :user
    end
  end
end
