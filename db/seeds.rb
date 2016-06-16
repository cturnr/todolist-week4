# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all

@user1 = User.create!({username: "Fiorina", password_digest: "password1"})
@user2 = User.create!({username: "Trump", password_digest: "password13"})
@user3 = User.create!({username: "Carson", password_digest: "password12"})
@user4 = User.create!({username: "Clinton", password_digest: "password15"})

@prof1 = Profile.create!(gender: "Female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina")
@prof2 = Profile.create!(gender: "Male", birth_year: 1946, first_name: "Donald", last_name: "Trump")
@prof3 = Profile.create!(gender: "Male", birth_year: 1951, first_name: "Ben", last_name: "Carson")
@prof4 = Profile.create!(gender: "Female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton",)

@user1.profile = @prof1
@user2.profile = @prof2
@user3.profile = @prof3
@user4.profile = @prof4