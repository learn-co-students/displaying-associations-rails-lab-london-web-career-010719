# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all

drake = Artist.create(name: "drake")
adele = Artist.create(name: "adele")
dualipa = Artist.create(name: "dualipa")
martingarrix = Artist.create(name: "martingarrix")

drake.songs.create(title: "together")
drake.songs.create(title: "one dance")
drake.songs.create(title: "skylight")

adele.songs.create(title: "hello")
adele.songs.create(title: "rolling")
dualipa.songs.create(title: "scared to be lonely")
martingarrix.songs.create(title: "animals")
