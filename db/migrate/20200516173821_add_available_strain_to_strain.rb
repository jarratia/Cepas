class AddAvailableStrainToStrain < ActiveRecord::Migration[5.2]
  def change
    add_column :strains, :available_strain, :boolean, default: true
  end
end
