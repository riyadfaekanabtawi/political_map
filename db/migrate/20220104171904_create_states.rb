# Create state migration file
class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
