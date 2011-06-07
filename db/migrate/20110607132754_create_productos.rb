class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :url
      t.integer :cantidad
      t.integer :regalo_id
      t.timestamps
    end
  end
end
