# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.destroy_all

gary_clark = Artist.create(name: "Gary Clark Jr.")

gary_clark.songs.create!(title: "Bright Lights")
gary_clark.songs.create!(title: "Come Together")
 
