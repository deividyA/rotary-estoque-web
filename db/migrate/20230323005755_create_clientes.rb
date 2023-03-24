class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.numeric :cpf, limit: 11
      t.string :nome
      t.string :sexo, limit: 1
      t.numeric :celular, limit: 14
      t.date :data_nascimento
      t.string :cep, limit: 8
      t.string :pais
      t.string :estado
      t.string :bairro
      t.string :endereco
      t.integer :numero
      t.text :complemento
    end
  end
end
