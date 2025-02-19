class CreateStateinformations < ActiveRecord::Migration[6.1]
  def change
    create_table :stateinformations do |t|
      t.string :state
      t.integer :asesinatos
      t.integer :robos
      t.integer :violaciones
      t.integer :maltrato_infantil

      t.timestamps
    end
  end
end
