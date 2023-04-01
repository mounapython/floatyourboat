# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Boat.destroy_all

image1 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://www.cruisehive.com/wp-content/uploads/2022/11/titanic5.jpg'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat1 = Boat.new(name: "Titanic", description: "a British passenger liner, operated by the White Star Line, the largest ship afloat at the time (1912) some say its truly unsinkable", category: "Cruise Ship",price: 5000, address: "	Southampton, England")
boat1.photo.attach(image1)
boat1.save


image2 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://i.redd.it/6eq4mnbb3w821.jpg'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat2 = Boat.new(name: "Orca", description: "and old yet reliable fishing boat captained by an even more older and reliable captain Quint, sail the seven seas on this rust bucket knowing youll be safe! well only if sharks arent involved", category: "Fishing Boat",price: 150, address: "Amity Island")
boat2.photo.attach(image2)
boat2.save



image3 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://s.marketwatch.com/public/resources/images/MW-FK627_double_ZH_20170418101336.jpg'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat3 = Boat.new(name: "Belfort", description: "ever wanted to feel like a rich, tax dodging, corrupt wall street multi millionaire ? now you can ! with this iconic superyath seized from Jordan Belfort in the 90s", category: "Super Yath",price: 1500, address: "New York City")
boat3.photo.attach(image3)
boat3.save


image4 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://static.wikia.nocookie.net/pirates/images/6/62/Black_Pearl_infobox.png/revision/latest?cb=20171110192901'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat4 = Boat.new(name: "Pearl", description: "wanna make yourself a reputation and collect riches along the seaven seas ? then this huge 1600s vessal will strike anyone in your path with fear ", category: "Pirate Ship",price: 350, address: "the Caribbean Island")
boat4.photo.attach(image4)
boat4.save


image5 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://images.boats.com/resize/1/60/18/7216018_20190919133650564_1_XLARGE.jpg?t=1671090102000'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat5 = Boat.new(name: "Belle", description: "An enviable combination of class-leading sports looks and performance, with a sporty open flybridge and sports-influenced open cockpit. Compact and incredibly nimble, finely powered and superbly crafted.", category: "Motor Yacht",price: 500, address: "Tampa, Florida")
boat5.photo.attach(image5)
boat5.save



image6 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://images.boats.com/resize/1/93/98/7989398_20210816075320033_1_XLARGE.jpg?t=1661524140000&w=600&h=600'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat6 = Boat.new(name: "Lyne", description: "a slick and very fast ride sporting an open and spacious cockpit design outfitted with storage", category: "jet boats",price: 250, address: "San Fransico, Florida")
boat6.photo.attach(image6)
boat6.save


image7 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://upload.wikimedia.org/wikipedia/commons/d/da/Symphmiami.jpg'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat7 = Boat.new(name: "Symphony of the Seas", description: "Symphony of the Seas is an Oasis-class cruise ship owned and operated by Royal Caribbean International. She was built in 2018 in the Chantiers de l'Atlantique shipyard in Saint-Nazaire, France, the fourth in Royal Caribbean's Oasis class of cruise ships.", category: "Cruise Ship",price: 2500, address: "Saint-Nazaire, France")
boat7.photo.attach(image7)
boat7.save


image8 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTO3wajC5hQvOFeLyyc9Du57db9Jpji6ooK4RGtFz9sLJvZAURr'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat8 = Boat.new(name: "Flöka", description: "ship used to catch fish in the sea, or on a lake or river used by traditional Moroocan fishermen on the coast of the Atlantic and Medeteranian", category: "Fishing Boat",price: 150, address: "essaouira, morocco")
boat8.photo.attach(image8)
boat8.save


image9 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://cdn.boatinternational.com/convert/files/2020/12/59858a70-3bb7-11eb-957a-6996e21593a4-top-25-Azzam-credit-Klaus-Jordan-Lurssen.jpg/r%5Bwidth%5D=1920/59858a70-3bb7-11eb-957a-6996e21593a4-top-25-Azzam-credit-Klaus-Jordan-Lurssen.webp'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat9 = Boat.new(name: "Azzam", description: "In October 2013, Lürssen delivered the largest privately owned superyacht in the world in the form Azzam. and it has accommodation for 36 guests and as many as 80 crew members.", category: "Super Yacht",price: 25000, address: "Hamburg Port, germany")
boat9.photo.attach(image9)
boat9.save



image10 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://img.particlenews.com/img/id/06UTRf_0kzUGTqZ00?type=thumbnail_1024x576'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat10 = Boat.new(name: "The Flying Dutchman", description: "The Flying Dutchman was a sea captain who once found himself struggling to round the Cape of Good Hope during a ferocious storm. He swore that he would succeed even if he had to sail until Judgment Day. The Devil heard his oath, and took him up on it; the Dutchman was condemned to stay at sea forever.", category: "Pirate Ship",price: 350, address: "Port of Amsterdam, netherland")
boat10.photo.attach(image10)
boat10.save



image11 = ActiveStorage::Blob.create_and_upload!(
  io: URI.open('https://images.boats.com/resize/1/93/98/7989398_20210816075320033_1_XLARGE.jpg?t=1661524140000&w=600&h=600'),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)

boat11 = Boat.new(name: "VICTORIOUS", description: "VICTORIOUS is a multi-award-winning, feature-packed explorer yacht for sale. She is the recipient of the Robb Report 2022 ‘Best of the Best’ Award and category winner ‘Motor Yacht Over 80 Metres’ at The International Yacht & Aviation Awards 2022.", category: "Motor Yacht",price: 50000, address: "Port of Sydney, australia")
boat11.photo.attach(image11)
boat11.save
