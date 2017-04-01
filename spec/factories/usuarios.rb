FactoryGirl.define do

  factory :usuario do
    usuario { Faker::StarWars.character }
    nombre { Faker::Name.first_name }
    apellido { Faker::Name.last_name }
    twitter { Faker::StarWars.planet }
  end
end
