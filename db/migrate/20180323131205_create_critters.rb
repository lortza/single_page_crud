class CreateCritters < ActiveRecord::Migration[5.0]
  def change
    create_table :critters do |t|
      t.string :name
      t.references :city, index: true, foreign_key: true
      t.string :color

      t.timestamps
    end
  end
end
