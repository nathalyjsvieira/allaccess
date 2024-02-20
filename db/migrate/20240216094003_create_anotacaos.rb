class CreateAnotacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :anotacaos do |t|
      t.string :nome
      t.text :descricao
      t.date :data

      t.timestamps
    end
  end
end
