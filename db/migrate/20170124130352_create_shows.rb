class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :show_genre
      t.string :image
      t.string :production_film_company
      t.integer :production_year

      t.timestamps
    end
  end
end
