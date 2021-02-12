class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :population
      t.integer :kingdom_id

      t.timestamps
    end
  end
end
