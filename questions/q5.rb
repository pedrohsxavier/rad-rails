20.times do
    p = Person.new
    p.nome = Faker::Name.name
    p.save
end