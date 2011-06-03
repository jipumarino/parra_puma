class Regalo < ActiveRecord::Base
  def reservado?
    !(email_amigo.blank? and nombre_amigo.blank?)
  end
end
