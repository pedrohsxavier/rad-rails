10.times{
    p = Person.new
    p.nome = Faker::Name.name
    p.save
}

Person.count.times{
    |i|
    Email.create(endereco: Faker::Internet.email, person_id:i+1)
}

5.times{
    |i|
    p = Person.find(i+1)
    p.update(nome: "Fulano de Tal")
}

p = Email.last.person
p.update(nome: "Beltraninha de Tal")

p = Person.last(2)
p.count.times{
    |i|
    p[i].destroy
}

p = Person.find([12, 13, 14, 15, 16])
p.count.times{
    |i|
    p[i].destroy
}

Email.destroy_all
Person.destroy_all