class Entrepreneur < ActiveRecord::Base
  attr_accessible :address, :born_at, :cellphone, :document_number, :document_type, :email, :first_name, :gender, :last_name, :password
  validates :address, :born_at, :cellphone, :document_number, :document_type, :email, :first_name, :gender, :last_name, :password, :presence => true

  validates :email, :document_number, :uniqueness => true

  DOCUMENT_TYPES = {:dni => "DNI", :passport => "Pasaporte"}

  has_many :business_planes

end
