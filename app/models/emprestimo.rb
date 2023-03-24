class Emprestimo < ApplicationRecord
  belongs_to :cliente_fk
  belongs_to :estoque_fk
end
