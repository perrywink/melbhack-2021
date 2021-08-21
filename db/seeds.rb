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
admin.password = 'valid_password'
admin.password_confirmation = 'valid_password'
admin.admin = true;
admin.save!

p1 = user.patients.create(name:"Dan Melcher", age:20, ward_number:"2A",notes:"Sample Notes")
p2 = user.patients.create(name:"Vicky Koo", age:60, ward_number:"2B",notes:"Decrease dosage overtime.")
p3 = user2.patients.create(name:"Owen Wilson", age:50, ward_number:"3A")
p4 = user2.patients.create(name:"Rick May", age:53, ward_number:"3B", notes:"Increase dosage overtime.")

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

log1.doses.create(amount:250, medicine_id:1)
log1.doses.create(amount:300, medicine_id:2)
log2.doses.create(amount:150, medicine_id:4)
log3.doses.create(amount:200, medicine_id:3)


