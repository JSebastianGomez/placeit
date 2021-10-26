# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_26_062304) do

  create_table "funcions", force: :cascade do |t|
    t.datetime "dia"
    t.integer "cupos"
    t.integer "pelicula_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pelicula_id"], name: "index_funcions_on_pelicula_id"
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "nombre"
    t.text "sinopsis"
    t.string "urlimagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.string "persona"
    t.string "correo"
    t.string "cedula"
    t.string "celular"
    t.integer "funcion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcion_id"], name: "index_reservas_on_funcion_id"
  end

  add_foreign_key "funcions", "peliculas"
  add_foreign_key "reservas", "funcions"
end
