class Usuario < ApplicationRecord

# validations
validates_presence_of :usuario, :nombre

end
