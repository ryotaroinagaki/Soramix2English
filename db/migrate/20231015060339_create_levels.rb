class CreateLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :levels do |t|
      t.string :level_name, null: false
      t.integer :total_questions, null: false

      t.timestamps
    end
  end
end
