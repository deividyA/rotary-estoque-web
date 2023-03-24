class CreateSituacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :situacaos do |t|
      t.string :descricao
    end
  end
end
