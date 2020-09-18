# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
SchoolClass.destroy_all

Student.create(first_name: "billy", last_name: "bob")
Student.create(first_name: "jim", last_name: "lob")
Student.create(first_name: "craig", last_name: "dob")
Student.create(first_name: "formaly known as  bob", last_name: "sob")

SchoolClass.create(title: "science room", room_number: 404)
SchoolClass.create(title: "dance room", room_number: 104)
SchoolClass.create(title: "france room", room_number: 204)
SchoolClass.create(title: "lance room", room_number: 304)
