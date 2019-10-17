p = Person.find([12, 13, 14, 15, 16])
p.count.times{
    |i|
    p[i].destroy
}