Person.count.times{
    |i|
    Email.create(endereco: Faker::Internet.email, person_id:i+1)
}