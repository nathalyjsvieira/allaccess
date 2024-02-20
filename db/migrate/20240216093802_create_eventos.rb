class CreateEventos < ActiveRecord::Migration[7.0]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.text :descricao
      t.date :inicio
      t.date :fim

      t.timestamps
    end
  end
end
