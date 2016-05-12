print "Seeding Posts"

Post.create ([
  { title: "My first Blog Post", body: "Very interesting blog", image: "http://mtfeat.site90.com/best1/img/slider1.jpg" },
  { title: "My second Blog Post", body: "More where that came from" },
  { title: "My third Blog Post" },
  { title: "My fourth Blog Post" },
  { title: "My fifth Blog Post" }
  ])

  puts " seeded #{Post.count} posts!"

Category.create([
    { name: "Developing" },
    { name: "Start" },
    { name: "Rails" },
    { name: "JS" }
   ])

puts "seeded #{Category.count} categories!"

# users = {
#
#   admin: {
#     email: 'mb@marian.nl',
#     password: 'adminpass' ,
#     password_confirmation: 'adminpass',
#     is_admin: true
#   }
# }

Admin.create  ([
  {email: 'marian@marian.nl', password: 'adminpass'}
])
