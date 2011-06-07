class AgregarNombreARegalo < ActiveRecord::Migration
  def up
    add_column :regalos, :nombre, :string
  end

  def down
    remove_column :regalos, :nombre
  end
end
