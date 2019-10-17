5.times do |i|
    p = Person.find(i+1)
    p.update(nome: "Fulano de Tal")
end