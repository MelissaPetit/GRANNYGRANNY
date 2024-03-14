# Destroy all existing records to ensure a clean slate
Booking.destroy_all
Offer.destroy_all
User.destroy_all

user1 = User.create!(
  first_name: "Francine",
  last_name: "Duchamp",
  phone_number: "+33749710103",
  password: "123456",
  email: "user1@grandma.com"
)

offer1 = Offer.create!(title: "Apprends le crawl avec mamy",
                       description:"Envie de perfectionner ton crawl dans une ambiance de FOLIE ? Rejoins-moi pour une session de natation unique ! Ensemble, nous prendrons le temps de travailler ta technique et de partager les secrets pour devenir un as du crawl. Rendez-vous à la piscine de Paris pour une expérience que tu n'oublieras pas !",
                       start_from: Date.today,
                       price_per_participant:"25",
                       photo_url:"https://lescoopsdelinformation-le-soleil-prod.web.arc-cdn.net/resizer/orwId7OAsd25CJ3PSFJDaqyitgU=/800x0/filters:format(jpg):quality(100)/cloudfront-us-east-1.images.arcpublishing.com/lescoopsdelinformation/6RYAT4RQSVG23EF7DT2EYZUMSY.jpg",
                       capacity: "2",
                       duration:"3",
                       category: "Sport",
                       address: "Paris",
                       user_id: user1.id)

user2 = User.create!(first_name: "Thérèse", last_name: "Dupont", phone_number: "+33749710103", password: "123456", email: "user2@grandma.com")

offer2 = Offer.create!(title: "Viens faire des roues arrière avec Thérèse",
                       description:"Amoureux de sensations fortes et de liberté ? Rejoins-moi pour mettre la GOMME !Ensemble, nous défierons les lois de la gravité en faisant des roues arrière sur nos deux roues. Que tu sois un novice ou un expert du deux roues,viens tester mon GSXR1000 et oui on Déguuuste ! Prépare-toi à vivre des moments inoubliables et à repousser tes limites !",
                       start_from: Date.today,
                       price_per_participant:"25",
                       photo_url:"https://www.hornig.fr/press/oma-hornig/oma-hornig-4g.JPG",
                       capacity: "3",
                       duration:"2",
                       category: "Sport",
                       address: "Toulouse",
                       user_id: user2.id)

user3 = User.create!(first_name: "Marie", last_name: "Jeanne", phone_number: "+33749710103", password: "123456", email: "user3@grandma.com")

offer3 = Offer.create!(title: "As-tu déjà goûté des space cake au CBD ? Mamy réalise les meilleurs de France",
                       description:"En immersion dans la fameuse et unique Castellane, rejoignez-moi, l'unique Marie Jeanne, pour déguster les saveurs de nos herbes locales. Je vous propose une expérience unique en circuit court qui valorise les producteurs locaux ! De la cueillette aux fourneaux, venez découvrir mes célèbres recettes qui vous détendront bien plus qu'une session de yoga !",
                       start_from: Date.today,
                       price_per_participant:"100",
                       photo_url:"https://www.newsweed.fr/wp-content/uploads/2017/07/Combien-de-temps-peut-on-e%CC%82tre-stone-apre%CC%80s-avoir-consomme%CC%81-des-22edibles22-.jpg",
                       capacity: "5",
                       duration:"5",
                       category: "Cuisine",
                       address: "Marseille",
                       user_id: user3.id)

user16 = User.create!(first_name: "Gisèle", last_name: "Farce", phone_number: "+33749710103", password: "123456", email: "gisèle@example.com")

offer16 = Offer.create!(title: "Cours de jonglage avec Mamie Gisèle",
                        description:"Préparez-vous à étonner le monde en apprenant à jongler avec des œufs sans les casser ! Rejoignez Mamie Gisèle, la reine du jonglage, pour une expérience hilarante et mémorable. Apprenez les techniques secrètes de jonglage tout en vous amusant comme jamais auparavant. Que vous soyez débutant ou déjà un expert, ce cours insolite est parfait pour ceux qui cherchent à relever un défi ! Réservez dès maintenant et préparez-vous à vivre une aventure unique et salissante!",
                        start_from: Date.today,
                        price_per_participant:"15",
                        photo_url:"https://st.depositphotos.com/2379655/53063/v/450/depositphotos_530632064-stock-illustration-granny-cooking-juggling-vegetables-vector.jpg",
                        capacity: "4",
                        duration:"2",
                        category: "Insolite",
                        address: "Paris",
                        user_id: user16.id)

user_sport18 = User.create!(first_name: "Josée", last_name: "Voltige", phone_number: "+33749710103", password: "123456", email: "xavier@example.com")

offer_sport18 = Offer.create!(title: "Initiation au saut à l'élastique avec Josée",
                        description:"Préparez-vous à vivre une montée d'adrénaline inoubliable avec Josée ! Faites le grand saut et découvrez les sensations fortes du saut à l'élastique. Cette activité est faites pour tous, différetes hauteurs celon les niveaux Accrochez-vous bien et laissez-vous emporter par l'excitation du saut ! Réservez maintenant et préparez-vous à une expérience qui vous fera frissonner de plaisir !",
                        start_from: Date.today,
                        price_per_participant:"80",
                        photo_url:"https://images.rtl.fr/~c/1540v1026/rtl/www/1105520-mary-manssen-est-la-femme-la-plus-agee-a-sauter-depuis-ce-site.jpg",
                        capacity: "2",
                        duration:"2",
                        category: "Sport",
                        address: "Grenoble",
                        user_id: user_sport18.id)

user9 = User.create!(first_name: "Lucienne", last_name: "Délices", phone_number: "+33749710103", password: "123456", email: "lucienne@example.com")

offer9 = Offer.create!(title: "Atelier de cuisine sauvage avec Mamie Lucienne",
                       description:"Amateurs de nature, de bonne cuisine et d'époques anciennes, embarquez avec moi pour une expérience inoubliable où vous découvrirez comment les aventuriers se débrouillaient pour concocter des festins à partir de rien. Nous partirons en chasse, cueillette d'aromates et je vous guiderai à travers les différentes étapes à suivre. Que vous soyez novice en cuisine sauvage, un aventurier aguerri ou même Mike Horn en personne, je peux vous assurer un moment de convivialité et de découverte. Et qui sait, en cas d'attaque de zombies ou d'aliens, soyez prêts à cuisiner un festin dans la nature hostile !",
                       start_from: Date.today,
                       price_per_participant:"40",
                       photo_url:"https://i.ytimg.com/vi/DAEwlhv5zvU/maxresdefault.jpg",
                       capacity: "6",
                       duration:"3",
                       category: "Cuisine",
                       address: "La forêt de Brocéliand",
                       user_id: user9.id)

user10 = User.create!(first_name: "Henriette", last_name: "Saveurix", phone_number: "+33749710103", password: "123456", email: "nriette@example.com")

offer10 = Offer.create!(title: "Découvrez les saveurs authentiques de la région lors d'une visite du marché avec Mamie Henriette",
                       description:"Connaissez-vous Obélix et Astérix ? Venez revivre les aventures du village gaulois en subissant les hurlements d'Ordralfabétix, le célèbre poissonnier du village ! Laissez-vous servir une bière par la fameuse Falbala dans une véritable immersion dans le marché gaulois. C'est une bande dessinée en vrai que je vous propose, alors qu'attendez-vous pour venir défier Obélix au lancer de menhir ?",
                       start_from: Date.today,
                       price_per_participant:"15",
                       photo_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3uTceM0qHcsLHZ0tKoKazLfR9NL4yk2RbZxJBVSbpsa39ripxjL4HEVB8BDqxFC6WmF8&usqp=CAU",
                       capacity: "8",
                       duration:"2",
                       category: "Cuisine",
                       address: "Brest",
                       user_id: user10.id)

user12 = User.create!(first_name: "Maya", last_name: "Tattoo", phone_number: "+33749710103", password: "123456", email: "henrie@example.com")

offer12 = Offer.create!(title: "Expérience de tatouage indonésien traditionnel avec Maya",
                       description:"Découvrez l'art ancestral du tatouage indonésien avec Maya, une artiste passionnée et experte dans la technique traditionnelle du tatouage à l'aiguille et au maillet, transmise de génération en génération dans sa famille. Plongez dans un voyage authentique où chaque tatouage raconte une histoire et une signification profonde. Que vous soyez à la recherche d'un motif traditionnel ou que vous souhaitiez créer une pièce unique, Maia saura vous guider avec son savoir-faire exceptionnel et son attention aux détails. Réservez dès maintenant pour une expérience de tatouage inoubliable dans le respect de la tradition indonésienne.",
                       start_from: Date.today,
                       price_per_participant:"80",
                       photo_url:"https://i.redd.it/9mlyjq9ah3541.jpg",
                       capacity: "1",
                       duration:"3",
                       category: "Tradition",
                       address: "Bali",
                       user_id: user12.id)

user13 = User.create!(first_name: "Rita", last_name: "Simba", phone_number: "+33749710103", password: "123456", email: "henlalrie@example.com")

offer13 = Offer.create!(title: "Soirées Techn de Berlin avec DJ Rita Simba",
                       description:"Plongez dans l'atmosphère enivrante des soirées sombres de Berlin avec DJ Rita Simba, une légende vivante qui fait vibrer les jeunes avec sa sélection de drum & bass et de musique au BPM élevé. Malgré son âge, Rita continue à enflammer les dancefloors et à faire taper du pied aux foules avec son énergie débordante et sa passion pour la musique électronique. Rejoignez-la pour une expérience unique où les rythmes intenses et les vibes underground vous transporteront dans les nuits électriques de la capitale allemande. Réservez maintenant et préparez-vous à une nuit inoubliable sous les étoiles de Berlin !",
                       start_from: Date.today,
                       price_per_participant:"80",
                       photo_url:"https://img.freepik.com/photos-premium/femme-agee-brillante-dj-lors-soiree-rave-techno-dans-club-grandma-dj-ai_126267-12789.jpg",
                       capacity: "1",
                       duration:"3",
                       category: "Insolite",
                       address: "Berlin",
                       user_id: user13.id)

user14 = User.create!(first_name: "Téa", last_name: "dszaczyne", phone_number: "+33749710103", password: "123456", email: "hnlzzie@example.com")

offer14 = Offer.create!(title: "Session de Valorant avec Mamie Pro",
                       description:"Entrez dans le monde compétitif de Valorant avec Mamie Téa, passionnée du jeu prête à vous accompagner dans des sessions personnalisées de 1v1, de parties classées et de coaching. Que vous soyez novice cherchant à s'améliorer ou joueur chevronné visant la perfection stratégique, Mamie est là pour vous guider avec son expérience et sa passion pour le jeu. Avec elle, vous aurez l'opportunité de progresser, de vous amuser et de découvrir pourquoi Mamie est votre meilleure alliée sur le champ de bataille de Valorant. Réservez dès maintenant pour une expérience de jeu inoubliable et laissez Mamie vous montrer le chemin vers la victoire !",
                       start_from: Date.today,
                       price_per_participant:"60",
                       photo_url:"https://i.ytimg.com/vi/uPQIuZ6tU0g/sddefault.jpg",
                       capacity: "5",
                       duration:"5",
                       category: "Insolite",
                       address: "Berlin",
                       user_id: user14.id)

user15 = User.create!(first_name: "Téa", last_name: "dszaczyne", phone_number: "+33749710103", password: "123456", email: "lalalae@example.com")

offer15 = Offer.create!(title: "Session de Valorant avec Mamie Pro",
                       description:"Entrez dans le monde compétitif de Valorant avec Mamie Téa, passionnée du jeu prête à vous accompagner dans des sessions personnalisées de 1v1, de parties classées et de coaching. Que vous soyez novice cherchant à s'améliorer ou joueur chevronné visant la perfection stratégique, Mamie est là pour vous guider avec son expérience et sa passion pour le jeu. Avec elle, vous aurez l'opportunité de progresser, de vous amuser et de découvrir pourquoi Mamie est votre meilleure alliée sur le champ de bataille de Valorant. Réservez dès maintenant pour une expérience de jeu inoubliable et laissez Mamie vous montrer le chemin vers la victoire !",
                       start_from: Date.today,
                       price_per_participant:"60",
                       photo_url:"https://i.ytimg.com/vi/uPQIuZ6tU0g/sddefault.jpg",
                       capacity: "5",
                       duration:"5",
                       category: "Insolite",
                       address: "Berlin",
                       user_id: user15.id)

user17 = User.create!(first_name: "Deneris", last_name: "Lionne", phone_number: "+33749710103", password: "123456", email: "hnlzz@example.com")

offer17 = Offer.create!(title: "Rencontre avec Gertrude et son Tigre de compagnie",
                       description:"Venez rencontrer Gertrude, la grand-mère courageuse qui vit avec son Tigre de compagnie depuis 10 ans ! Apprenez tout sur la vie quotidienne avec un Tigre, des promenades dans le jardin aux câlins sur le canapé. Découvrez les secrets pour établir une relation de confiance et d'amour avec ces majestueux félins. Ne manquez pas cette occasion unique de vivre une expérience hors du commun en compagnie de Gertrude et de son Tigre bien-aimé !",
                       start_from: Date.today,
                       price_per_participant:"70",
                       photo_url:"https://i.ytimg.com/vi/T8VQfohue60/mqdefault.jpg",
                       capacity: "4",
                       duration:"2",
                       category: "Insolite",
                       address: "Safari Park",
                       user_id: user17.id)

user19 = User.create!(first_name: "Minerva", last_name: "McGonaghall", phone_number: "+33749710103", password: "123456", email: "hddnlzz@got.com")

offer19 = Offer.create!(title: "Cours de création de potions avec le Professeur McGonagall",
                       description:"Rejoignez le Professeur McGonagall, la sorcière la plus respectée de Poudlard, pour un cours de création de potions magiques ! Plongez dans l'univers de la magie à travers des expériences, des anecdotes et des histoire à propos d'Harry Potter. Apprenez les secrets de la création de potions tout en découvrant des histoires fascinantes sur les ingrédients magiques de l'univers de Poudlard. Préparez-vous à concocter des potions étonnantes et à passer un moment inoubliable en compagnie du Professeur McGonagall elle-même.",
                       start_from: Date.today,
                       price_per_participant:"60",
                       photo_url:"https://images.rtl.fr/~c/2000v2000/rtl/www/1329511-minerva-mcgonagall-maggie-smith.jpg",
                       capacity: "4",
                       duration:"2",
                       category: "Insolite",
                       address: "Poudlard",
                       user_id: user19.id)
