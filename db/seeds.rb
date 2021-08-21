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

p1 = user.patients.create(name:"Dan Melcher", age:20, ward_number:"2A")
p2 = user.patients.create(name:"Vicky Koo", age:60, ward_number:"2B")
p3 = user2.patients.create(name:"Owen Wilson", age:50, ward_number:"3A")
p4 = user2.patients.create(name:"Rick May", age:53, ward_number:"3B")

p1.logs.create(time_admr:"2021-07-20 06:04:00.000000000 +0000",dose:2)
p2.logs.create(time_admr:"2021-08-19 04:04:00.000000000 +0000",dose:1)
p2.logs.create(time_admr:"2021-08-21 05:04:00.000000000 +0000",dose:1)
p2.logs.create(time_admr:"2021-08-23 02:04:00.000000000 +0000",dose:1)
p3.logs.create(time_admr:"2021-06-14 03:11:00.000000000 +0000",dose:2)
p3.logs.create(time_admr:"2021-06-17 06:23:00.000000000 +0000",dose:2)
p3.logs.create(time_admr:"2021-06-20 10:33:00.000000000 +0000",dose:2)
p4.logs.create(time_admr:"2021-07-20 04:04:00.000000000 +0000",dose:2)
