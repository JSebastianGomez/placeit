class CreateFuncions < ActiveRecord::Migration[6.1]
  def change
    create_table :funcions do |t|
      t.datetime :dia
      t.integer :cupos
      t.references :pelicula, null: false, foreign_key: true

      t.timestamps
    end
  end
end
