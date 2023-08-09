class CreateChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :choices do |t|
      t.references :question, null: false, foreign_key: true
      t.text :choice
      t.boolean :is_answer,   null: false

    end
  end
end
