class CreateClientes < ActiveRecord::Migration[8.0]
  def change
    create_table :clientes, id: false do |t|
      t.references :user, null: false, foreign_key: true
      t.string :nome,           null: false, default: ""
      t.string :email,          null: false, default: ""
      t.string :telefone,       null: false, default: ""
      t.date   :aniversario,    null: false
      t.string :document,       null: false, default: ""
      t.boolean :newsletter,    null: false, default: false

      t.timestamps
    end
  end
end
