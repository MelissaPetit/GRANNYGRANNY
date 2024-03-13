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

# Exemple 1
user1 = User.create!(first_name: "Francine", last_name: "Duchamp", phone_number:"+33749710103", password: "123456", email: "user1@grandma.com")
offer1 = Offer.create!(title: "Apprends le crawl avec mamy",
                       description:"Prends le temps de faire quelques longueurs avec moi et je te donnerai tous mes secrets",
                       start_from: Date.today,
                       price_per_participant:"25",
                       photo_url:"http://yogi.y.o.pic.centerblog.net/o/386c285a.jpg",
                       capacity: "2",
                       duration:"3",
                       category: "Natation",
                       address: "Paris",
                       user_id: user1.id)

user2 = User.create!(first_name: "Thérèse", last_name: "Dupont", phone_number:"+33749710103", password: "123456", email: "user2@grandma.com")
offer2 = Offer.create!(title: "Viens faire du wheeling avec Thérèse",
                       description:"Viens tester les lois de la gravité sur mon deux roues",
                       start_from: Date.today,
                       price_per_participant:"25",
                       photo_url:"http://yogi.y.o.pic.centerblog.net/o/386c285a.jpg",
                       capacity: "3",
                       duration:"2",
                       category: "Sport extrême",
                       address: "Toulouse",
                       user_id: user2.id
                    )

user3 = User.create!(first_name: "Marie", last_name: "Jeanne", phone_number:"+33749710103", password: "123456", email: "user3@grandma.com")
offer3 = Offer.create!(title: "Viens déguster les meilleurs recettes de mamy",
                       description:"As-tu déjà gouté des space cake au CBD ? Mamy réalise les meilleurs de France.",
                       start_from: Date.today,
                       price_per_participant:"100",
                       photo_url:"http://yogi.y.o.pic.centerblog.net/o/386c285a.jpg",
                       capacity: "5",
                       duration:"5",
                       category: "Cuisine",
                       address: "Marseille",
                       user_id: user3.id
                    )

user4 = User.create!(first_name: "Louise", last_name: "Couteau", phone_number:"+33749710103", password: "123456", email: "user4@grandma.com")
offer4 = Offer.create!(title: "Lancer de couteaux",
                        description:"Ma cuisine regorge de couteaux bien aiguisés et prêts à être lancés. Rejoins-moi pour cette super aventure !",
                        start_from: Date.today,
                        price_per_participant:"50",
                        photo_url:"http://yogi.y.o.pic.centerblog.net/o/386c285a.jpg",
                        capacity: "1",
                        duration:"3",
                        category: "Sport extrême",
                        address: "Bordeaux",
                        user_id: user4.id
                    )

userBooking1 = User.create!(first_name: "Mélissa", last_name: "Petit", phone_number:"+33749710103", password: "123456", email: "booking1@user.com")
booking1 = Booking.create!(user_id: userBooking1.id,
                           offer_id: offer1.id,
                           date: Date.today + 2,
                           status: "pending",
                           participant_number: "3",
                           comment:"Nous sommes très intéressés par votre activité et nous viendrons avec toute la famille",
                           total_price: 100
                          )

user_booking2 = User.create!(first_name: "Sylvain", last_name: "Bohrer", phone_number: "", password: "123456", email: "test@test.com")
Booking.create!(user_id: user_booking2.id, offer_id: offer2.id, date: Date.today + 5, status: "confirmed", participant_number: "2", comment:"Nous avons hâte de découvrir cette activité !", total_price: 80)

Booking.create(user_id: 4, offer_id: 4, date: Date.tomorrow, status: "pending", participant_number: 2, comment: "Excité d'explorer", total_price: 60.0)
Booking.create(user_id: 5, offer_id: 5, date: Date.today, status: "confirmed", participant_number: 4, comment: "Impatient de cette aventure", total_price: 100.0)
Booking.create(user_id: 6, offer_id: 6, date: Date.tomorrow, status: "pending", participant_number: 1, comment: "Voyage en solo", total_price: 25.0)
Booking.create(user_id: 7, offer_id: 7, date: Date.tomorrow, status: "confirmed", participant_number: 2, comment: "Célébration d'une occasion", total_price: 70.0)
Booking.create(user_id: 8, offer_id: 8, date: Date.tomorrow, status: "confirmed", participant_number: 3, comment: "Sortie en famille", total_price: 90.0)
Booking.create(user_id: 9, offer_id: 9, date: Date.tomorrow, status: "pending", participant_number: 2, comment: "Excité d'apprendre de nouvelles compétences", total_price: 55.0)
Booking.create(user_id: 10, offer_id: 10, date: Date.tomorrow, status: "confirmed", participant_number: 5, comment: "Voyage de groupe", total_price: 120.0)
