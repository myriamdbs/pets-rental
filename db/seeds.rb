require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Booking.destroy_all
Pet.destroy_all
User.destroy_all
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1=User.new(email: "charlotte.pichelot@gmail.com", password: "chacha", first_name: "charlotte", last_name: "pichelot" )
user1.save
user2=User.new(email: "tot@gmail.com", password: "hellotoday", first_name: "titi", last_name: "toto" )
user2.save
user3=User.new(email: "mimi@gmail.com", password: "mimimi", first_name: "myriam", last_name: "dbs" )
user3.save
user4=User.new(email: "antoine@gmail.com", password: "123456", first_name: "antoine", last_name: "rochon" )
user4.save
user5=User.new(email: "brad@gmail.com", password: "braddfuji", first_name: "brad", last_name: "fuji" )
user5.save

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/3/31/Lasiodora_parahybana_2009_G03.jpg')
pet1 = Pet.new(species: "Spider", name: "Thomas", user: user1, price: 12, environment: "Indoor")
pet1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet1.save

file = URI.open('https://img.maxisciences.com/s3/frgsd/1024/animal/default_2019-10-08_ab4cfee3-cc8e-4a3c-a207-7853579de7ce.jpeg')
pet2 = Pet.new(species: "Elephant", name: "Louis", user: user1, price: 15, environment: "Outdoor")
pet2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet2.save

file = URI.open('https://www.lejardindesanimaux.com/wp-content/uploads/2014/08/Le-Jardin-des-animaux-drole-de-chien-184.jpg')
pet3 = Pet.new(species: "Dog", name: "Laura", user: user1, address: "45 rue de juliod", age: 1 , environment: "Outdoor", price: 30)
pet3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet3.save

file = URI.open('https://lareleveetlapeste.fr/wp-content/uploads/2019/01/image-couv-site-92922.jpg')
pet4 = Pet.new(species: "Lion", name: "Dimitri", user: user1, price: 12, environment: "Outdoor")
pet4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet4.save

file = URI.open('https://www.novastan.org/fr/wp-content/uploads/sites/4/2020/02/scorpion-931561_1920-1300x901.jpg')
pet5 = Pet.new(species: "Scorpion", name: "Paul", user: user1, price: 32, environment: "Outdoor")
pet5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet5.save

file = URI.open('https://p0.storage.canalblog.com/06/38/1340217/124506477_o.jpg')
pet6 = Pet.new(species: "Iguane", name: "Diane", user: user1, price: 22, environment: "Both")
pet6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet6.save

file = URI.open('https://static.educalingo.com/img/en/800/parrot.jpg')
pet7 = Pet.new(species: "Parrot", name: "Basile", user: user1, price: 12, environment: "Both")
pet7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet7.save

file = URI.open('https://s.rfi.fr/media/display/6d3a6a9a-3d2a-11ea-8ee8-005056a98db9/w:1240/p:16x9/loup_charente_maritime.webp')
pet8 = Pet.new(species: "Wolf", name: "Julien", user: user1, price: 9, environment: "Both")
pet8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet8.save

file = URI.open('https://cdn-s-www.dna.fr/images/EAE75D75-BAD4-4D29-BE4A-3F2F90BDF9E3/NW_raw/meng-meng-la-femelle-panda-photo-tobias-schwarz-afp-1566900838.jpg')
pet9 = Pet.new(species: "Panda", name: "Lamiaa", user: user1, price: 6, environment: "Both")
pet9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet9.save

file = URI.open('https://img-3.journaldesfemmes.fr/l5mUy2957Wb9QAN1vZhBj6p0AV4=/910x607/smart/bef16f699d8e44bca2dc3f4e0b0ed399/ccmcms-jdf/11609301.jpg')
pet10 = Pet.new(species: "Dog", name: "Romain", user: user1, price: 30, environment: "Outdoor")
pet10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet10.save

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/7/78/Akita_inu.jpeg')
pet11 = Pet.new(species: "Dog", name: "Cecile", user: user1, price: 40, environment: "Outdoor")
pet11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet11.save

file = URI.open('https://pearlfrenchbulldogs.com/wp-content/uploads/2019/10/QUEEN-1.jpg')
pet12 = Pet.new(species: "Dog", name: "Philippine", user: user1, price: 25, environment: "Indoor")
pet12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pet12.save

Pet.all.each do |pet|
  pet.name = pet.name.capitalize
  pet.save
end

Booking.create(pet: pet1, user: user4, total_price: 1000)
Booking.create(pet: pet3, user: user4, total_price: 7000)
Booking.create(pet: pet2, user: user4, total_price: 2000)
Booking.create(pet: pet4, user: user4, total_price: 7000)
Booking.create(pet: pet5, user: user4, total_price: 2000)
Booking.create(pet: pet6, user: user4, total_price: 7000)
Booking.create(pet: pet7, user: user4, total_price: 2000)
Booking.create(pet: pet8, user: user4, total_price: 2000)
Booking.create(pet: pet9, user: user4, total_price: 2000)
Booking.create(pet: pet10, user: user4, total_price: 2000)
Booking.create(pet: pet11, user: user4, total_price: 2000)
Booking.create(pet: pet12, user: user4, total_price: 2000)


