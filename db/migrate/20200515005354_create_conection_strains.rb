class CreateConectionStrains < ActiveRecord::Migration[5.2]
  def change
    create_table :conection_strains do |t|
      t.references :wine, foreign_key: true
      t.references :strain, foreign_key: true

      t.timestamps
    end
  end
end
