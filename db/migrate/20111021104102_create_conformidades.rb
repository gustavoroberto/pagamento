class CreateConformidades < ActiveRecord::Migration
  def change
    create_table :conformidades do |t|
      t.string :caixa
      t.string :processo
      t.date :data
      t.text :observacao
      t.decimal :valor, precision: 9, scale: 2
      t.integer :fornecedor_id

      t.timestamps
    end
  end
end
