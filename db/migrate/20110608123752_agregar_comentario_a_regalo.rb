class AgregarComentarioARegalo < ActiveRecord::Migration
  def up
    add_column :regalos, :comentario, :text
  end

  def down
    remove_column :regalos, :comentario
  end
end
