class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.references :music,            null: false, foreign_key: true
      t.string :youtube_id,           null: false
      t.integer :youtube_start_time,  null: false
      t.integer :youtube_end_time,    null: false
      t.integer :difficulty
      t.text :commentary
      t.text :japanese

    end
  end
end
