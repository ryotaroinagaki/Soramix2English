class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string :music_name,   null: false
      t.string :artist_name,  null: false
      t.string :category
      t.integer :year

    end
  end
end
