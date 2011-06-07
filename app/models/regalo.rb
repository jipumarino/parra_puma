class Regalo < ActiveRecord::Base
  has_many :productos
  accepts_nested_attributes_for :productos

  validate do |regalo|
    errors.add(:base, "Ya esta reservado") if reservado?
  end
  after_validation :guardar_reservado

  def guardar_reservado
    if self.email_amigo.blank? or self.nombre_amigo.blank?
      self.email_amigo = self.nombre_amigo = nil
      self.reservado = false
    else
      self.reservado = true
    end
  end
end
