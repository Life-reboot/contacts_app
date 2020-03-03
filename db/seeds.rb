# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
contact = Contact.new(first_name: "Saron", last_name: "Yitbarek", email: "saron@example.com", phone_number: "3243243244")
contact.save

contact = Contact.new(first_name: "Majora", last_name: "Carter", email: "majora@example.com", phone_number: "3243243245")
contact.save

contact = Contact.new(first_name: "Danilo", last_name: "Campos", email: "danilo@example.com", phone_number: "4243243245")
contact.save
