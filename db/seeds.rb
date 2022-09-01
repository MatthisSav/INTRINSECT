# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

Booking.destroy_all
Insect.destroy_all
User.destroy_all

puts 'Creating 3 fake users...'
user1 = User.new(email: "test@test.com", password: "123456")
user1.save!
user2 = User.new(email: "kikoo@skyrock.com", password: "234567")
user2.save!
user3 = User.new(email: "jean.eude@yahoo.com", password: "345678")
user3.save!
puts 'Finished!'

puts 'Creating 10 fake insect...'
mouche = Insect.new(
  name: "Petite mouche bien sympa",
  description: "Bien dressé, elle saura exactement où aller pour faire fuir vos invités les plus relou",
  order: "Diptères",
  user: user1,
  latitude: 48.88433,
  longitude: 2.35072
)
mouche.photos.attach(io: File.open('db/images/mouche_1.jpg'), filename: 'mouche_1.jpg')
mouche.photos.attach(io: File.open('db/images/mouche_2.jpeg'), filename: 'mouche_2.jpeg')
mouche.photos.attach(io: File.open('db/images/mouche_3.jpeg'), filename: 'mouche_3.jpeg')
mouche.save!
puts '=> A new mouch insect has been created'

pyrops = Insect.new(
  name: "Pyrops candelaria pour impressionner vos convives",
  description: "De la même famille des cigales, cet insecte coloré fera son plus bel effet lors de vos événements !",
  order: "Hémiptères",
  user: user1,
  latitude: 48.8648482,
  longitude: 2.3798534
)
pyrops.photos.attach(io: File.open('db/images/pyrops_1.jpg'), filename: 'pyrops_1.jpg')
pyrops.photos.attach(io: File.open('db/images/pyrops_2.jpg'), filename: 'pyrops_2.jpg')
pyrops.save!
puts '=> A new pyrops insect has been created'

punaise = Insect.new(
  name: "Oh pinaise !",
  description: "Sans intérêt",
  order: "Pentatomidae",
  user: user1,
  latitude: 48.77758,
  longitude: 2.44803
)
punaise.photos.attach(io: File.open('db/images/punaise_1.jpeg'), filename: 'punaise_1.jpeg')
punaise.save!
puts '=> A new punaise insect has been created'

luciole = Insect.new(
  name: "Lucioles",
  description: "Je mets à disposition 24 lucioles pour illuminer votre jardin. Attention à Roberto qui se fait un peu vieux et qui a dû mal à s'allumer de temps en temps...",
  order: "Coléoptères",
  user: user1,
  latitude: 48.80536,
  longitude: 2.12050
)
luciole.photos.attach(io: File.open('db/images/luciole_1.jpeg'), filename: 'luciole_1.jpeg')
luciole.photos.attach(io: File.open('db/images/luciole_2.jpeg'), filename: 'luciole_2.jpeg')
luciole.photos.attach(io: File.open('db/images/luciole_3.jpeg'), filename: 'luciole_3.jpeg')
luciole.save!
puts '=> A new luciole insect has been created'

moustiques = Insect.new(
  name: "Armée de moustiques",
  description: 'Un voisin désagréable, une belle mère inhospitalière, des "amis" un peu trop collants ? J\'ai la solution !',
  order: "Diptères",
  user: user2,
  latitude: 48.86870,
  longitude: 2.62109
)
moustiques.photos.attach(io: File.open('db/images/moustique_1.jpeg'), filename: 'moustique_1.jpeg')
moustiques.photos.attach(io: File.open('db/images/moustique_2.jpeg'), filename: 'moustique_2.jpeg')
moustiques.save!
puts '=> A new moustique insect has been created'

guepes = Insect.new(
  name: "Bataillon de guêpes",
  description: "N'hésitez pas à en disperser quelqus uns dans des lieux où vous souhaitez ne voir aucun intrus.",
  order: "Hyménoptères",
  user: user2,
  latitude: 48.87970,
  longitude: 2.30955
)
guepes.photos.attach(io: File.open('db/images/guepe_1.jpeg'), filename: 'guepe_1.jpeg')
guepes.photos.attach(io: File.open('db/images/guepe_2.webp'), filename: 'guepe_2.webp')
guepes.photos.attach(io: File.open('db/images/guepe_3.jpeg'), filename: 'guepe_3.jpeg')
guepes.save!
puts '=> A new guepes insect has been created'

fourmis = Insect.new(
  name: "Patrouille de Fourmis",
  description: "Bonne gardienne de votre maison, elles sauront vous avertir en cas d'intrusion inopinée.",
  order: "Hyménoptères",
  user: user2,
  latitude: 48.87257,
  longitude: 2.37365
)
fourmis.photos.attach(io: File.open('db/images/fourmis_1.jpeg'), filename: 'fourmis_1.jpeg')
fourmis.photos.attach(io: File.open('db/images/fourmis_2.jpeg'), filename: 'fourmis_2.jpeg')
fourmis.save!
puts '=> A new fourmis insect has been created'

coccinelles = Insect.new(
  name: "Coccinelles",
  description: "En cas de coup dur, louez mes Coccinelles qui vous apporterons chances et bonheur durant toute la période de location",
  order: "Coléoptères",
  user: user3,
  latitude: 48.88024,
  longitude: 2.17861
)
coccinelles.photos.attach(io: File.open('db/images/coccinelle_1.jpg'), filename: 'coccinelle_1.jpg')
coccinelles.save!
puts '=> A new coccinelle insect has been created'
puts 'Finished!'
