# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

admin = Admin.create({email: 'admin@admin.com', password: 'password', password_confirmation: 'password'})

professionals = Professional.create([
  {email: 'test1@test.com', password: 'test1234', password_confirmation: 'test1234'}, 
  {email: 'test2@test.com', password: 'test1234', password_confirmation: 'test1234'}, 
  {email: 'test3@test.com', password: 'test1234', password_confirmation: 'test1234'}, 
  {email: 'test4@test.com', password: 'test1234', password_confirmation: 'test1234'}, 
  {email: 'test5@test.com', password: 'test1234', password_confirmation: 'test1234'},
  {email: 'test6@test.com', password: 'test1234', password_confirmation: 'test1234'},
  {email: 'test7@test.com', password: 'test1234', password_confirmation: 'test1234'},
  {email: 'test8@test.com', password: 'test1234', password_confirmation: 'test1234'},
  {email: 'test9@test.com', password: 'test1234', password_confirmation: 'test1234'},
  {email: 'test10@test.com', password: 'test1234', password_confirmation: 'test1234'}
  ])

sectors = Sector.create([
  {name: "Business", image: File.open(Rails.root+'public/images/1.jpg')},
  {name: "Charity", image: File.open(Rails.root+'public/images/2.jpg')},
  {name: "Creative", image: File.open(Rails.root+'public/images/3.jpg')},
  {name: "Government", image: File.open(Rails.root+'public/images/4.jpg')},
  {name: "Legal", image: File.open(Rails.root+'public/images/5.jpg')},
  {name: "Leisure", image: File.open(Rails.root+'public/images/6.jpg')},
  {name: "Media", image: File.open(Rails.root+'public/images/7.jpg')},
  {name: "Medicine", image: File.open(Rails.root+'public/images/8.jpg')},
  {name: "Sport", image: File.open(Rails.root+'public/images/9.jpg')},
  {name: "Technology", image: File.open(Rails.root+'public/images/10.jpg')},
  {name: "Trade", image: File.open(Rails.root+'public/images/11.jpg')},
  {name: "Other", image: File.open(Rails.root+'public/images/12.jpg')}
  ])

profiles = Profile.create([
  {name: "Sanda Golcea", sector_id: 10, verified: true, image: File.open(Rails.root+'public/images/sanda.jpg') , info: "I make websites", full_description: "I use programming languages like Ruby and Javascript to write web applications",address: "50-52 Commercial Street, London, E1 6LT" , company: "Makers Academy" , professional_id: 1, job: "Engineer", req_quals: "None, but a Computer Science degree helps", req_skills: "Ability to problem solve, to think abstractly, and to be equally comfortable thinking of the big picture and the finer details", expectations: "If you come and work with us for the day, it may seem a bit scary and intimidating to begin with, but I can promise that you'll learn a lot and feel that you can go away and write your own (albeit simple) code" }, 
  {name: "Emily Sas", sector_id: 8, verified: true, image: File.open(Rails.root+'public/images/emily.jpg'), info: "GP in a Village Surgery", full_description: "I support patients from the local villages, treating people struggling with physical and mental illness, and helping to ensure general wellbeing" , address: "235 Euston Road, Fitzrovia, London NW1 2BU" , company: "University College London Hospital" , professional_id: 2 , job: "Doctor" , req_quals: "You would need to study Medicine at undergraduate and postgraduate level" , req_skills: "Good people skills", expectations: "Every day is different, you could help out at our mother and baby clinics or with home visits" }, 
  {name: "Luke Clewlow", sector_id: 12, verified: true, image: File.open(Rails.root+'public/images/luke.jpg'), info: "Hair Styling and Colouring", full_description: "I specialise in haute couture hair", address: "34 Compton Crescent, London W14", company: "The Salon", professional_id: 3, job: "Designer", req_quals: "None, but there are multiple courses or apprenticeships available", req_skills: "Precision, good people skills", expectations: "You will greet the customers, help them feel comfortable, learn how to give a head massage whist shampooing their hair, and pick up a few tricks of the trade"  }, 
  {name: "Huy Le", sector_id: 3, verified: true, image: File.open(Rails.root+'public/images/huyle.jpg'),info: "Baking the best bread in town", full_description: "I'm an award-winning baker, making sourdough bread, pizzas, and bagels. I combine modern techniques with those passed down from previous generations, to achieve the perfect loaf", address: "34 Rylett Crescent, London W12 9RL", company: "The Loaf" , professional_id: 4 , job: "Baker", req_quals: "None", req_skills: "Good attention to detail, a love of food" , expectations: "Come and see what it's like to be a star baker, by the end of the day you'll be able to make your own delicious bread, pizza or bagels" }, 
  {name: "Jonny Lakin", sector_id: 11, verified: false, image: File.open(Rails.root+'public/images/jonny.jpg'), info: "Knows everything there is to know about bikes" , full_description: "I've long had a passion for bikes, and spend my time repairing broken bicyles as well as making custom-built bikes for discerning customers", address: "1 Church Street, Stoke Newington, London N16" , company: "Steer Me Right", professional_id: 5, job: "Mechanic", req_quals: "None", req_skills: "Good with hands, good customer service, an interest in understanding how things work", expectations: "You'll learn the basics of how to make and repair bicycles, experience first class customer service, and maybe help design a new bicycle" },
  {name: "Jin Dai", sector_id: 10, verified: true, image: File.open(Rails.root+'public/images/jin.jpg') , info: "I work with mesh networks", full_description: "I use many programming languages like Ruby, Javascript, Java and Objective C to write complex applications",address: "80 Great Eastern Street, London, EC 2A" , company: "Yammer" , professional_id: 6, job: "Engineer", req_quals: "Computer Science degree", req_skills: "Problem solving skills, team spirit, dedication, passion for technology", expectations: "If you spend a day with us, you will find a very friendly team and will learn a lot about programming and hopefully will feel inspired to go away and write your own programs" },
  {name: "Danielle Demkiw", sector_id: 8, verified: true, image: File.open(Rails.root+'public/images/danielle.jpg') , info: "I am a dentist and own my private practice", full_description: "I run a private dentistry practice, I specialize in braces for infants but also do general dental works",address: "48 Hoxton Square, London, N1 6PB" , company: "Dentidee" , professional_id: 7, job: "Doctor", req_quals: "Medicine degree", req_skills: "Desire to help others, love of children, administrative skills", expectations: "Spending a day with us you will assist in creating brace gloves, you will learn basics about the bucal cavity and the tools we use for adjusting and glueing braces" },
  {name: "India Dearlove", sector_id: 7, verified: true, image: File.open(Rails.root+'public/images/india.jpg') , info: "Fashion editor for Elle Magazine", full_description: "I decide which models will be shown in each edition and which are the fashion segments that will be included",address: "338-346 Goswell Road, London, EC1V 7LQ" , company: "Elle Magazine" , professional_id: 8, job: "Designer", req_quals: "Desirable but not imperative: fashion degree or design degree", req_skills: "A passion for all things estethic", expectations: "You will help me choose the next fashion segments for the current issue and will have a look at how things work inside a magazine" },
  {name: "Henry Garner", sector_id: 5, verified: true, image: File.open(Rails.root+'public/images/henry.jpg') , info: "I am a lawyer", full_description: "I work on defense cases from the state and for disadvantaged individuals",address: "38 Graham Street, London, N1 8JX" , company: "House of judges" , professional_id: 9, job: "Lawyer", req_quals: "Law diploma", req_skills: "Persuation ability, good speaker", expectations: "You will take part in the the various steps of preparing a defense case and if you're lucky you will get to see a case in the court of law" },
  {name: "Kieran Goodacre", sector_id: 9, verified: true, image: File.open(Rails.root+'public/images/kieran.jpg') , info: "Teaching ski is my life", full_description: "Private ski instructor, I also teach group classes twice a week in the winter season",address: "168-172 Old Street, London, EC1V 9BP" , company: "Mountain Supreme" , professional_id: 10, job: "Ski Instructor", req_quals: "Not required but helps having a physical education diploma", req_skills: "Good physical condition", expectations: "We will go in the morning on the mountain and pair on teaching a group of beginner students basic skills and safety in skiing" }
  ])


