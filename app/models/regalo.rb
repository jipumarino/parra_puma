class Regalo < ActiveRecord::Base
  has_many :productos, :dependent => :destroy
  accepts_nested_attributes_for :productos, :allow_destroy => true, :reject_if => proc { |attributes| attributes['url'].blank? }

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
