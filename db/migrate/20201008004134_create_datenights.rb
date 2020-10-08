class CreateDatenights < ActiveRecord::Migration[6.0]
  def change
    create_table :datenights do |t|
      t.string :category
      t.string :title
      t.text :instructions
      t.string :items

      t.timestamps
    end
  end
end
