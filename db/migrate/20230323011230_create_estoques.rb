class CreateEstoques < ActiveRecord::Migration[7.0]
  def change
    create_table :estoques do |t|

      t.timestamps
    end
  end
end
