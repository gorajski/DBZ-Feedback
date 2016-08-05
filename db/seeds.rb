# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def boolean_sample
	[true,true,true,false].sample
end

def percentage_sample
	[0,20,40,60,80,100].sample
end

def random_user
	User.limit(1).order("RANDOM()").first
end

def random_feedback
	Feedback.limit(1).order("RANDOM()").first
end
if Rails.env.development?

	Feedback.delete_all
	User.delete_all
	Review.delete_all

	15.times do
		User.create(
			full_name: Faker::Name.name,
			email: Faker::Hipster.word + "@dbz.edu",
			password: "password"
			)
	end
	300.times do
		Feedback.create(
			author_id: random_user.id,
			recipient_id: random_user.id,
			pair_date:Faker::Time.between(DateTime.now - 20, DateTime.now),
			project_name: Faker::Hacker.verb + " " + Faker::Hacker.noun,
			show_up: boolean_sample,
			check_in: boolean_sample,
			percent_drive: percentage_sample,
			clarity_of_communication: percentage_sample,
			content: Faker::Lorem.paragraphs(4).join('\n'),
			appropriate: boolean_sample
			)
	end
	1000.times do
		Review.create(
			doable: percentage_sample,
			benevolent: percentage_sample,
			zeroed_in: percentage_sample,
			reviewer_id: random_user.id,
			feedback_id: random_user.id
			)
	end
end
if Rails.env.test?
	Feedback.delete_all
	User.delete_all
	Review.delete_all

	joe = User.create(
		full_name:"BROSEPH",
		email:"joe@dbz.edu",
		password:"password"
		)

	helom = User.create(
		full_name: "HELOM",
		email: "helom@dbz.edu",
		password: "password"
		)

3.times do
	Feedback.create(
		author_id: random_user.id,
		recipient_id: random_user.id,
		pair_date:Faker::Time.between(DateTime.now - 20, DateTime.now),
		project_name: Faker::Hacker.verb + " " + Faker::Hacker.noun,
		show_up: boolean_sample,
		check_in: boolean_sample,
		percent_drive: percentage_sample,
		clarity_of_communication: percentage_sample,
		content: Faker::Lorem.paragraphs(4).join('\n'),
		appropriate: boolean_sample
		)
end

	4.times do
		Review.create(
			doable: percentage_sample,
			benevolent: percentage_sample,
			zeroed_in: percentage_sample,
			reviewer_id: random_user.id,
			feedback_id: random_user.id
			)
	end
end

User.create(
	full_name: "Josiff",
	email: 'josiff@dbz.edu',
	is_admin: true,
	password: 'password'
	)
