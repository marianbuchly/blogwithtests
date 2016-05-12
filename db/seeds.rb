print "Seeding Posts"

Post.create ([
  { title: "The Basics", body: "Learning Ruby on Rails, Javascript, and working with AJAX and JQuery. All of the basics were covered. Check out soms projects here.", image: "http://mtfeat.site90.com/best1/img/slider1.jpg" },
  { title: "My second Blog Post", body: "Taking it to the next level with a more indepth look into Rails and React.js. Check out severval projects here." },
  { title: "My third Blog Post", body: "Trying out some new stuff Ruby on Rails etc" },
  { title: "My fourth Blog Post", body: "Other nerd things will follow soon" },
  { title: "My fifth Blog Post", body: "Will look amazing someday" }
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
