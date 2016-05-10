print "Seeding Posts"

Post.create ([
  { title: "My first Blog Post" },
  { title: "My second Blog Post" },
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
