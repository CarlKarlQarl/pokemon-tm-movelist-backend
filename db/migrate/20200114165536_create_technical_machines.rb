class CreateTechnicalMachines < ActiveRecord::Migration[6.0]
  def change
    create_table :technical_machines do |t|
      t.string :name
      t.integer :number
      t.string :element

      t.timestamps
    end
  end
end
