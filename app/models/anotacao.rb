class Anotacao < ApplicationRecord
    validates :nome, presence: true
    validates :descricao, presence: true
    validates :data, presence: true
end
