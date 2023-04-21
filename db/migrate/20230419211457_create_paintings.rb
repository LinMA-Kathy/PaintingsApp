class CreatePaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :description
      t.integer :year
      t.integer :views
      t.string :image_url
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
