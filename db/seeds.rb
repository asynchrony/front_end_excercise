# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Profile.create(first_name: 'Nick', last_name: 'Bimpasis', email: 'nick.bimpasis@asolutions.com', :gender => 'm', income: '1', date_of_birth: '1978-02-23' )
