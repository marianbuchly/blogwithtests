print "Seeding Posts"

Post.create ([
  { title: "My first Blog Post" },
  { title: "My second Blog Post" },
  { title: "My third Blog Post" },
  { title: "My fourth Blog Post" },
  { title: "My fifth Blog Post" }
  ])

  puts " seeded #{Post.count} posts!"
