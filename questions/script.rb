10.times do |i|
    p = Person.new
    p.nome = Faker::Name.name
    p.save
end

Person.count.times do |i|
    Email.create(endereco: Faker::Internet.email, person_id:i+1)
end

5.times do |i|
    p = Person.find(i+1)
    p.update(nome: "Fulano de Tal")
end

p = Email.last.person
p.update(nome: "Beltraninha de Tal")

20.times do
    p = Person.new
    p.nome = Faker::Name.name
    p.save
end

p = Person.last(2)
p.count.times do |i|
    p[i].destroy
end

p = Person.find([12, 13, 14, 15, 16])
p.count.times do |i|
    p[i].destroy
end

Email.destroy_all
Person.destroy_all