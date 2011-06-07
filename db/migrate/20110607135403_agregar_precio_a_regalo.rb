class AgregarPrecioARegalo < ActiveRecord::Migration
  def up
    add_column :regalos, :precio, :integer
  end

  def down
    remove_column :regalos, :precio
  end
end
