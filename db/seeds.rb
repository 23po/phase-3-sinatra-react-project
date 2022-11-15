puts "🌱 Seeding spices..."

# Seed your database here
Admin = User.create(name: "Admin")

Job.create(title: "Junior Data Scientist", recruiter: "Pezesha", stack: "python, ruby", ifremote: "no", location: "https://pezesha.com/careers/junior-data-scientist", user_id: Admin.id)
Job.create(title: "Web Engineer", recruiter: "Nala Money", stack: "vanilla js, node.js", ifremote: "yes", location: "https://nalateam.notion.site/Web-Engineer-Remote-3-Positions-d3e95236ea594c4e8a49611c55f0d255", user_id: Admin.id)
Job.create(title: "QA Engineer (Web)", recruiter: "Nala Money", stack: "vanilla js, node.js", ifremote: "hybrid", location: "https://nalateam.notion.site/QA-Engineer-Web-2-positions-a779bb080a3a42779b1e79ab3c994c7c", user_id: Admin.id)


puts "✅ Done seeding!"


