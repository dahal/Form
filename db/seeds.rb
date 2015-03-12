# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

puts 'Create first user.'
@user = User.create(email: 'puru@dahal.me', password: 'password')

puts 'Create 10 random users'
10.times do |n|
  User.create(email: "puru+#{n}@dahal.me", password: 'password')
end

puts "Change Puru's forms to test_form: false"
@form = @user.forms.first
@form.test_form = false
@form.save

puts "Create submissions for Puru's form"

50.times do |n|
  Submission.create(form_id: @form.id, details:
                                                {
                                                  name: Faker::Name.name,
                                                  email: Faker::Internet.email
                                                }
    )
end
