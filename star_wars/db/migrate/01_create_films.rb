class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string  :name
      t.string  :description
      t.string  :image_file
      t.integer :release_year

    end
  end
end