require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.delete_all
PhoneNumber.delete_all

people = []
20.times do
people << Person.create!(name: Faker::Name.name)
end

50.times do
PhoneNumber.create!(person: people.sample,
                    number: Faker::PhoneNumber.phone_number,
                    name: ["work", "home", "cell", "emergency"].sample)
end

clinton = Person.create(name: "Clinton")
PhoneNumber.create!(number: "415-706-7185", person: clinton)
