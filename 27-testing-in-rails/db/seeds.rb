# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flag.destroy_all
User.destroy_all

User.create(username: "snabes", password: "shannon")

Flag.create(region: "Ecuador", flag_type: "National", current: true, info: "The mountain in the coat of arms is Mt. Chimborazo, which is the furthest place on the surface of the Earth from the center of the Earth.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Flag_of_Ecuador.svg/1024px-Flag_of_Ecuador.svg.png", rating: 4)
Flag.create(region:"San Marino", flag_type: "National", current: true, info:"The ostrich feathers are weather vanes.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Flag_of_San_Marino.svg/800px-Flag_of_San_Marino.svg.png", rating: 4)
Flag.create(region:"Kyrgyzstan", flag_type: "National", current: true, info:"The symbol in the middle is the roof of a yurt.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/1024px-Flag_of_Kyrgyzstan.svg.png", rating:4)
Flag.create(region:"Wales", flag_type: "Regional", current: true, info:"Adam's favorite flag.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_Wales_%281959%E2%80%93present%29.svg/255px-Flag_of_Wales_%281959%E2%80%93present%29.svg.png", rating:4)
Flag.create(region:"Macau", flag_type: "State/Territory", current: true, info:"The white line under the lotus flower represents the Governador Nobre de Carvalho Bridge.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Flag_of_Macau.svg/255px-Flag_of_Macau.svg.png", rating:4)
Flag.create(region:"Provo, Utah", flag_type: "Municipal", current: false, info:"Notoriously bad", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Flag_of_Provo%2C_Utah_%281989%E2%80%932015%29.svg/1024px-Flag_of_Provo%2C_Utah_%281989%E2%80%932015%29.svg.png", rating: 1)
Flag.create(region:"The Gambia", flag_type: "National", current: true, info:"The blue band represents the Gambia River.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_The_Gambia.svg/200px-Flag_of_The_Gambia.svg.png", rating:3)
Flag.create(region:"Zimbabwe", flag_type: "National", current: true, info:"The soapstone bird is a symbol of Zimbabwe.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Flag_of_Zimbabwe.svg/255px-Flag_of_Zimbabwe.svg.png", rating:4)
Flag.create(region:"Bosnia and Herzegovina", flag_type: "National", current: true, info:"The triangle represents the approximate shape of the country.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Flag_of_Bosnia_and_Herzegovina.svg/255px-Flag_of_Bosnia_and_Herzegovina.svg.png", rating:3)
Flag.create(region:"New Zealand", flag_type: "Humorous", current: false, info:"The kiwi and the silver fern are the national bird and plant of NZ, respectively.", image_url:"https://nzhistory.govt.nz/files/styles/fullsize/public/laser-kiwi-flag.jpg?itok=_Q24A5az", rating: 3)
Flag.create(region:"Croatia", flag_type: "National", current: true, info:"Red, white and blue are the pan-Slavic colors.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/255px-Flag_of_Croatia.svg.png", rating:4)
Flag.create(region:"Northern Territory of Australia", flag_type: "State/Territory", current: true, info:"The flower is a Sturt's desert rose.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Flag_of_the_Northern_Territory.svg/1280px-Flag_of_the_Northern_Territory.svg.png", rating: 5)
