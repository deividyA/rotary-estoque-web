class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :categoria, categoria: true, null: false, foreign_key: true
      t.references :situacao, situacao: true, null: false, foreign_key: true
      t.string :descricao
    end
  end
end
