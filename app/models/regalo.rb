class Regalo < ActiveRecord::Base
  validates :email_amigo, :presence => true
  validates :nombre_amigo, :presence => true
  validate do |regalo|
    errors.add(:base, "Ya esta reservado") if reservado?
  end
  after_validation :guardar_reservado

  def guardar_reservado
    self.reservado = !(email_amigo.blank? and nombre_amigo.blank?)
  end
end
