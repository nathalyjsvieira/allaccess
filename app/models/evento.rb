class Evento < ApplicationRecord
    validates :nome, presence: true
    validates :descricao, presence: true
    validates :inicio, presence: true
    validates :fim, presence: true
end
