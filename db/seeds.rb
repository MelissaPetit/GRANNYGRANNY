# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# destroy all dans le bon ordre
Booking.destroy_all
Offer.destroy_all
User.destroy_all

# Sports
user1 = User.create!(first_name: "Francine", last_name: "Duchamp", phone_number:"+33749710103", password: "123456", email: "user1@grandma.com")
offer1 = Offer.create!(title: "Apprends le crawl avec mamy",
                       description:"Prends le temps de faire quelques longueurs avec moi et je te donnerai tous mes secrets",
                       start_from: Date.today,
                       price_per_participant:"25",
                       photo_url:"https://lescoopsdelinformation-le-soleil-prod.web.arc-cdn.net/resizer/orwId7OAsd25CJ3PSFJDaqyitgU=/800x0/filters:format(jpg):quality(100)/cloudfront-us-east-1.images.arcpublishing.com/lescoopsdelinformation/6RYAT4RQSVG23EF7DT2EYZUMSY.jpg",
                       capacity: "2",
                       duration:"3",
                       category: "Sport",
                       address: "Paris",
                       user_id: user1.id)

user2 = User.create!(first_name: "Thérèse", last_name: "Dupont", phone_number:"+33749710103", password: "123456", email: "user2@grandma.com")
offer2 = Offer.create!(title: "Viens faire du wheeling avec Thérèse",
                       description:"Viens tester les lois de la gravité sur mon deux roues",
                       start_from: Date.today,
                       price_per_participant:"25",
                       photo_url:"https://www.hornig.fr/press/oma-hornig/oma-hornig-4g.JPG",
                       capacity: "3",
                       duration:"2",
                       category: "Sport",
                       address: "Toulouse",
                       user_id: user2.id)

user3 = User.create!(first_name: "Marie", last_name: "Jeanne", phone_number:"+33749710103", password: "123456", email: "user3@grandma.com")
offer3 = Offer.create!(title: "Viens déguster les meilleurs recettes de mamy",
                       description:"As-tu déjà gouté des space cake au CBD ? Mamy réalise les meilleurs de France.",
                       start_from: Date.today,
                       price_per_participant:"100",
                       photo_url:"https://www.newsweed.fr/wp-content/uploads/2017/07/Combien-de-temps-peut-on-e%CC%82tre-stone-apre%CC%80s-avoir-consomme%CC%81-des-22edibles22-.jpg",
                       capacity: "5",
                       duration:"5",
                       category: "cuisine",
                       address: "Marseille",
                       user_id: user3.id)

user4 = User.create!(first_name: "Louise", last_name: "Couteau", phone_number:"+33749710103", password: "123456", email: "user4@grandma.com")
offer4 = Offer.create!(title: "Lancer de couteaux",
                        description:"Ma cuisine regorge de couteaux bien aiguisés et prêts à être lancés. Rejoins-moi pour cette super aventure !",
                        start_from: Date.today,
                        price_per_participant:"50",
                        photo_url:"https://maville.com/photosmvi/2020/10/23/P23936006D4345122G.jpg",
                        capacity: "1",
                        duration:"3",
                        category: "Sport",
                        address: "Bordeaux",
                        user_id: user4.id)

user5 = User.create!(first_name: "Gertrude", last_name: "Escalade", phone_number:"+33749710103", password: "123456", email: "gertrude@example.com")
offer5 = Offer.create!(title: "Yamakasi avec Mamie Gertrude",
                       description:"Affrontez les sommets de grattes ciel de NewYork avec Mamie Gertrude lors d'une séance de parcours.",
                       start_from: Date.today,
                       price_per_participant:"60",
                       photo_url:"http://img.over-blog-kiwi.com/1/13/07/80/20140712/ob_aa143b_1959519-603497376391891-1983315609-n.jpg",
                       capacity: "4",
                       duration:"5",
                       category: "Sport",
                       address: "NewYork",
                       user_id: user5.id)

user16 = User.create!(first_name: "Gisèle", last_name: "Farce", phone_number:"+33749710103", password: "123456", email: "gisèle@example.com")
offer16 = Offer.create!(title: "Cours de jonglage avec Mamie Gisèle",
                        description:"Apprenez à jongler avec des œufs sans les casser avec Mamie Gisèle, la reine du jonglage absurde.",
                        start_from: Date.today,
                        price_per_participant:"15",
                        photo_url:"http://yogi.y.o.pic.centerblog.net/o/386c285a.jpg",
                        capacity: "4",
                        duration:"2",
                        category: "Insolites",
                        address: "Paris",
                        user_id: user16.id)

user_sport18 = User.create!(first_name: "Xavier", last_name: "Voltige", phone_number:"+33749710103", password: "123456", email: "xavier@example.com")
offer_sport18 = Offer.create!(title: "Initiation au saut à l'élastique avec Xavier",
                        description:"Faites le grand saut avec Xavier et découvrez les sensations fortes du saut à l'élastique.",
                        start_from: Date.today,
                        price_per_participant:"80",
                        photo_url:"https://i.dailymail.co.uk/i/pix/2015/06/18/09/29B20E9F00000578-3129120-Thumbs_up_The_former_cabbie_from_Essex_described_the_record_brea-a-4_1434616110764.jpg",
                        capacity: "2",
                        duration:"1",
                        category: "Sport",
                        address: "Grenoble",
                        user_id: user_sport18.id)

# Cuisine
user9 = User.create!(first_name: "Lucienne", last_name: "Délices", phone_number:"+33749710103", password: "123456", email: "lucienne@example.com")
offer9 = Offer.create!(title: "Atelier de cuisine  Sauvage avec Mamie Lucienne",
                       description:"Apprenez à concocter de délicieuses plats à partir de rien avec Mamie Lucienne, une experte en survie!.",
                       start_from: Date.today,
                       price_per_participant:"40",
                       photo_url:"https://i.ytimg.com/vi/DAEwlhv5zvU/maxresdefault.jpg",
                       capacity: "6",
                       duration:"3",
                       category: "Cuisine",
                       address: "La forêt de Brocéliand",
                       user_id: user9.id)

user10 = User.create!(first_name: "Henriette", last_name: "Saveurs", phone_number:"+33749710103", password: "123456", email: "henriette@example.com")
offer10 = Offer.create!(title: "Visite du marché local avec Mamie Henriette",
                       description:"Découvrez les saveurs authentiques de la région lors d'une visite du marché avec Mamie Henriette.",
                       start_from: Date.today,
                       price_per_participant:"15",
                       photo_url:"http://yogi.y.o.pic.centerblog.net/o/386c285a.jpg",
                       capacity: "8",
                       duration:"2",
                       category: "Cuisine",
                       address: "Brest",
                       user_id: user10.id)