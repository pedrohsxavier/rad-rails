p = Person.last(2)
p.count.times{
    |i|
    p[i].destroy
}