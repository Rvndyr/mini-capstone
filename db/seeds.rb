product = Product.create!(name: "playstation 5", price:499, description: "A gaming system, that you can find", supplier_id: 1)
supplier = Supplier.create!(name:"Sony", email:"sony@test.com", phone_number:"111-222-111")
image = Image.create!(url:"https://i.pcmag.com/imagery/reviews/047S0c9zdo5nBklbPt1Dbs9-12..1604614641.jpg", product_id:1)

