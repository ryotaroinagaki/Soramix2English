class CreateLyrics < ActiveRecord::Migration[7.0]
  def change
    create_table :lyrics do |t|
      t.references :question, null: false, foreign_key: true
      t.text :lyric
      t.integer :timing
      
    end
  end
end
