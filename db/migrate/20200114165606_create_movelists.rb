class CreateMovelists < ActiveRecord::Migration[6.0]
  def change
    create_table :movelists do |t|
      t.references :pokemon, null: false, foreign_key: true
      t.references :technical_machine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
