class CreateEstoques < ActiveRecord::Migration[7.0]
  def change
    create_table :estoques do |t|
      t.references :item, item: true, null: false, foreign_key: true
      t.date :data_entrada
      t.date :data_saida
      t.integer :status
    end
  end
end
