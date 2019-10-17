20.times{
    p = Person.new
    p.nome = Faker::Name.name
    p.save
}