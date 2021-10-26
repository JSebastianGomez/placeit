class CreatePeliculas < ActiveRecord::Migration[6.1]
  def change
    create_table :peliculas do |t|
      t.string :nombre
      t.text :sinopsis
      t.string :urlimagen

      t.timestamps
    end
  end
end
