user = User.new
user.email = 'test@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.save!

user2 = User.new
user2.email = 'test2@example.com'
user2.password = 'valid_password'
user2.password_confirmation = 'valid_password'
user2.save!

admin = User.new
admin.email = 'admin@example.com'
user2.password = 'valid_password'
user2.password_confirmation = 'valid_password'
user2.admin = true;
user2.save!

p1 = user.patients.create(name:"Dan Melcher", age:20, ward_number:"2A",notes:"Sample Notes", image:"https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8eW91bmclMjBtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80")
p2 = user.patients.create(name:"Vicky Koo", age:60, ward_number:"2B",notes:"Decrease dosage overtime.", image:"https://thumbs.dreamstime.com/b/happy-old-man-29232681.jpg")
p3 = user2.patients.create(name:"Owen Wilson", age:50, ward_number:"3A", image:"https://d2r55xnwy6nx47.cloudfront.net/uploads/2019/07/Olivier_1500_Trptch.jpg")
p4 = user2.patients.create(name:"Rick May", age:53, ward_number:"3B", notes:"Increase dosage overtime.", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw8pZyzYASUolt485Perux0aW-Up6iLixgbA&usqp=CAU")

log1 = p1.logs.create(time_admr:"2021-07-20 06:04:00.000000000 +0000")
log2 = p2.logs.create(time_admr:"2021-08-19 04:04:00.000000000 +0000")
p2.logs.create(time_admr:"2021-08-21 05:04:00.000000000 +0000")
p2.logs.create(time_admr:"2021-08-23 02:04:00.000000000 +0000")
log3 = p3.logs.create(time_admr:"2021-06-14 03:11:00.000000000 +0000")
p3.logs.create(time_admr:"2021-06-17 06:23:00.000000000 +0000")
p3.logs.create(time_admr:"2021-06-20 10:33:00.000000000 +0000")
p4.logs.create(time_admr:"2021-07-20 04:04:00.000000000 +0000")

Medicine.create(generic_name:"Paracetamol", brand_name:"Panadol")
Medicine.create(generic_name:"Acetaminophen", brand_name:"Actamin")
Medicine.create(generic_name:"Viagra", brand_name:"Revatio")
Medicine.create(generic_name:"Fentanyl", brand_name:"Fentora")
Medicine.create(generic_name:"Crestor", brand_name:"Rosuvastatin")   
Medicine.create(generic_name:"Lipitor", brand_name:"Atorvastatin")
Medicine.create(generic_name:"Protonix", brand_name:"Pantoprazole")
Medicine.create(generic_name:"Nexium", brand_name:"Esomeprazole")
Medicine.create(generic_name:"Lexapro", brand_name:"Escitalopram")
Medicine.create(generic_name:"Amoxil", brand_name:"Amoxicillin")

log1.doses.create(amount:250, medicine_id:1)
log1.doses.create(amount:300, medicine_id:2)
log2.doses.create(amount:150, medicine_id:4)
log3.doses.create(amount:200, medicine_id:3)


