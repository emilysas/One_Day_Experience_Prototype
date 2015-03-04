# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

admin = Admin.create({email: 'admin@admin.com', password: 'password', password_confirmation: 'password'})

professionals = Professional.create([{email: 'test1@test.com', password: 'test1234', password_confirmation: 'test1234'}, 
  {email: 'test2@test.com', password: 'test1234', password_confirmation: 'test1234'}, 
  {email: 'test3@test.com', password: 'test1234', password_confirmation: 'test1234'}, 
  {email: 'test4@test.com', password: 'test1234', password_confirmation: 'test1234'}, 
  {email: 'test5@test.com', password: 'test1234', password_confirmation: 'test1234'}
  ])

sectors = Sector.create([
  {name: "Business", image: File.open(Rails.root+'public/images/sectors/business.jpg')},
  {name: "Charity", image: File.open(Rails.root+'public/images/sectors/charity.jpg')},
  {name: "Creative", image: File.open(Rails.root+'public/images/sectors/creative.jpg')},
  {name: "Government", image: File.open(Rails.root+'public/images/sectors/government.jpg')},
  {name: "Legal", image: File.open(Rails.root+'public/images/sectors/legal.jpg')},
  {name: "Leisure", image: File.open(Rails.root+'public/images/sectors/leisure.jpg')},
  {name: "Media", image: File.open(Rails.root+'public/images/sectors/media.jpg')},
  {name: "Medicine", image: File.open(Rails.root+'public/images/sectors/medicine.jpg')},
  {name: "Sport", image: File.open(Rails.root+'public/images/sectors/sport.jpg')},
  {name: "Technology", image: File.open(Rails.root+'public/images/sectors/technology.jpg')},
  {name: "Trade", image: File.open(Rails.root+'public/images/sectors/plane.jpg')},
  {name: "Other", image: File.open(Rails.root+'public/images/sectors/other.jpg')}
  ])

profiles = Profile.create([
  {name: "Sanda Golcea", sector_id: 10, verified: true, image: File.open(Rails.root+'public/images/sanda.jpg') , info: "I make amazing websites", full_description: "I use programming languages like Ruby and Javascript to write web applications",address: "50-52 Commercial Street, London, E1 6LT" , company: "Makers Academy" , professional_id: 1, job: "Engineer", req_quals: "None, but a Computer Science degree helps", req_skills: "Ability to problem solve, to think abstractly, and to be equally comfortable thinking of the big picture and the finer details", expectations: "If you come and work with us for the day, it may seem a bit scary and intimidating to begin with, but I can promise that you'll learn a lot and feel that you can go away and write your own (albeit simple) code" }, 
  {name: "Emily Sas", sector_id: 8, verified: true, image: File.open(Rails.root+'public/images/emily.jpg'), info: "GP in a Village Surgery", full_description: "I support patients from the local villages, treating people struggling with physical and mental illness, and helping to ensure general wellbeing" , address: "235 Euston Road, Fitzrovia, London NW1 2BU" , company: "University College London Hospital" , professional_id: 2 , job: "Doctor" , req_quals: "You would need to study Medicine at undergraduate and postgraduate level" , req_skills: "Good people skills", expectations: "Every day is different, you could help out at our mother and baby clinics or with home visits" }, 
  {name: "Luke Clewlow", sector_id: 12, verified: true, image: File.open(Rails.root+'public/images/luke.jpg'), info: "Hair Styling and Colouring", full_description: "I specialise in haute couture hair", address: "34 Compton Crescent, London W14", company: "The Salon", professional_id: 3, job: "Designer", req_quals: "None, but there are multiple courses or apprenticeships available", req_skills: "Precision, good people skills", expectations: "You will greet the customers, help them feel comfortable, learn how to give a head massage whist shampooing their hair, and pick up a few tricks of the trade"  }, 
  {name: "Huy Le", sector_id: 3, verified: true, image: File.open(Rails.root+'public/images/huyle.jpg'),info: "Baking the best bread in town", full_description: "I'm an award-winning baker, making sourdough bread, pizzas, and bagels. I combine modern techniques with those passed down from previous generations, to achieve the perfect loaf", address: "34 Rylett Crescent, London W12 9RL", company: "The Loaf" , professional_id: 4 , job: "Baker", req_quals: "None", req_skills: "Good attention to detail, a love of food" , expectations: "Come and see what it's like to be a star baker, by the end of the day you'll be able to make your own delicious bread, pizza or bagels" }, 
  {name: "Jonny Lakin", sector_id: 11, verified: false, image: File.open(Rails.root+'public/images/jonny.jpg'), info: "Knows everything there is to know about bikes" , full_description: "I've long had a passion for bikes, and spend my time repairing broken bicyles as well as making custom-built bikes for discerning customers", address: "1 Church Street, Stoke Newington, London N16" , company: "Steer Me Right", professional_id: 5, job: "Mechanic", req_quals: "None", req_skills: "Good with hands, good customer service, an interest in understanding how things work", expectations: "You'll learn the basics of how to make and repair bicycles, experience first class customer service, and maybe help design a new bicycle" }
  ])

