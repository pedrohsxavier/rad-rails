p = Person.last(2)
p.count.times do |i|
    p[i].destroy
end