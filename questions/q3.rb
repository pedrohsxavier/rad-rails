5.times{
    |i|
    p = Person.find(i+1)
    p.update(nome: "Fulano de Tal")
}