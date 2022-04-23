# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Customer.create(name: "Muhammad Fata Nuryanto",email:"fatanuryanto1010@gmail.com",phone: "088223951155",address: "Cileungsi, Kab.Bogor")
Item.create(name: "Nsai Goreng",price: 12000,description:"Nasi digoreng")

Order.create(customer_id:1,status:"Paid",order_date:"2022-04-23 03:00:00",total:12000)

Order.create(customer_id:2,status:"New",order_date:"2022-04-27 03:00:00",total:16000)

OrderDetail.create(order_id:1,item_id:1,quantity:1)
OrderDetail.create(order_id:2,item_id:2,quantity:2)