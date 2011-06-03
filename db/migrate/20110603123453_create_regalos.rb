class CreateRegalos < ActiveRecord::Migration
  def change
    create_table :regalos do |t|
      t.text :descripcion
      t.string :email_amigo
      t.string :nombre_amigo
      t.string :url
      t.string :tienda

      t.timestamps
    end
  end
end
