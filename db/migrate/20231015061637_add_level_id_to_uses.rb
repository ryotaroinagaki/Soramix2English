class AddLevelIdToUses < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :level, foreign_key: true
  end
end
