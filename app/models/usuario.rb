class Usuario < ApplicationRecord
  #Al crear objeto debe tener estos atributos
  validates_presence_of :usuario, :nombre
  #Debe contener estos atributos el objeto creado
  validates :usuario, :nombre, presence: true
  #Dejaremos que el usuario debe ser unico
  validates :usuario, uniqueness: true
end
