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

ActiveRecord::Schema[7.0].define(version: 2023_03_24_011347) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "descricao"
  end

  create_table "clientes", force: :cascade do |t|
    t.decimal "cpf"
    t.string "nome"
    t.string "sexo", limit: 1
    t.decimal "celular"
    t.date "data_nascimento"
    t.string "cep", limit: 8
    t.string "pais"
    t.string "estado"
    t.string "bairro"
    t.string "endereco"
    t.integer "numero"
    t.text "complemento"
  end

  create_table "emprestimos", force: :cascade do |t|
    t.bigint "clientes_id", null: false
    t.bigint "estoques_id", null: false
    t.date "data_inicial"
    t.date "data_final"
    t.string "status_emprestimo"
    t.index ["clientes_id"], name: "index_emprestimos_on_clientes_id"
    t.index ["estoques_id"], name: "index_emprestimos_on_estoques_id"
  end

  create_table "estoques", force: :cascade do |t|
    t.bigint "item_id", null: false
    t.date "data_entrada"
    t.date "data_saida"
    t.integer "status"
    t.index ["item_id"], name: "index_estoques_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "categoria_id", null: false
    t.bigint "situacao_id", null: false
    t.string "descricao"
    t.index ["categoria_id"], name: "index_items_on_categoria_id"
    t.index ["situacao_id"], name: "index_items_on_situacao_id"
  end

  create_table "situacaos", force: :cascade do |t|
    t.string "descricao"
  end

  add_foreign_key "emprestimos", "clientes", column: "clientes_id"
  add_foreign_key "emprestimos", "estoques", column: "estoques_id"
  add_foreign_key "estoques", "items"
  add_foreign_key "items", "categoria", column: "categoria_id"
  add_foreign_key "items", "situacaos"
end
