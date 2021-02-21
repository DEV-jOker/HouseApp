class CreateCubboards < ActiveRecord::Migration[5.2]
  def change
    create_table :cubboards do |t|
      t.string :name
      t.text :description
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
