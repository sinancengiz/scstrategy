class CreateKingdoms < ActiveRecord::Migration[6.1]
  def change
    create_table :kingdoms do |t|
      t.string :name
      t.string :population
      t.string :color

      t.timestamps
    end
  end
end
