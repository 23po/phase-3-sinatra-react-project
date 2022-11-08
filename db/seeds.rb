puts "🌱 Seeding spices..."

# Seed your database here
Admin = User.create(name: "Admin")

Job.create(title: "Junior Data Scientist", organization: "Pezesha", location: "https://pezesha.com/careers/junior-data-scientist", user_id: Admin.id)
Job.create(title: "Web Engineer", organization: "Nala Money", location: "https://nalateam.notion.site/Web-Engineer-Remote-3-Positions-d3e95236ea594c4e8a49611c55f0d255", user_id: Admin.id)
Job.create(title: "Mario Kart", organization: "Nala Money", location: "https://nalateam.notion.site/QA-Engineer-Web-2-positions-a779bb080a3a42779b1e79ab3c994c7c", user_id: Admin.id)

User.create(name: "Admin")
puts "✅ Done seeding!"


