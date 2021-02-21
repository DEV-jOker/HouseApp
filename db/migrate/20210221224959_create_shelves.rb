class CreateShelves < ActiveRecord::Migration[5.2]
  def change
    create_table :shelves do |t|
      t.string :name
      t.text :description
      t.references :cubboard, foreign_key: true

      t.timestamps
    end
  end
end
