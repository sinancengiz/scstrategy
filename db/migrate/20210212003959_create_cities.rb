class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :population
      t.string :color

      t.timestamps
    end
  end
end
