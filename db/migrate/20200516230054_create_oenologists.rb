class CreateOenologists < ActiveRecord::Migration[5.2]
  def change
    create_table :oenologists do |t|
      t.string :name
      t.integer :age
      t.string :nationality
      t.references :magazine, foreign_key: true

      t.timestamps
    end
  end
end
