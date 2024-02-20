json.extract! evento, :id, :nome, :descricao, :inicio, :fim, :created_at, :updated_at
json.url evento_url(evento, format: :json)
