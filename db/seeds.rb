# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all

artists = [
  {name: "Dr. Dre"},
  {name: "Eminem"},
  {name: "Xibit"},
  {name: "50 Cent"}
]
Artist.create(artists)

songs = [
  {title: "Rappy Rap Song", artist: Artist.first},
  {title: "Hipdy-Hip-Hop-Song", artist: Artist.first},
  {title: "Song 3", artist: Artist.second},
  {title: "Rapy Song boi", artist: Artist.third}
]
Song.create(songs)
