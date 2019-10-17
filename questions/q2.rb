Person.count.times do |i|
    Email.create(endereco: Faker::Internet.email, person_id:i+1)
end