# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110608123752) do

  create_table "productos", :force => true do |t|
    t.string   "nombre"
    t.string   "url"
    t.integer  "cantidad"
    t.integer  "regalo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regalos", :force => true do |t|
    t.text     "descripcion"
    t.string   "email_amigo"
    t.string   "nombre_amigo"
    t.string   "url"
    t.string   "tienda"
    t.boolean  "reservado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre"
    t.integer  "precio"
    t.text     "comentario"
  end

end
