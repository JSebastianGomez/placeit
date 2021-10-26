class CreateReservas < ActiveRecord::Migration[6.1]
  def change
    create_table :reservas do |t|
      t.string :persona
      t.string :correo
      t.string :cedula
      t.string :celular
      t.references :funcion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
