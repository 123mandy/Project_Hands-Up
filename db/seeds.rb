# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create :user_name => "Mandy", :email => 'mandy@ga.co', :password => "123123"
u2 = User.create :user_name => "Vinnie", :email => 'vinnie@ga.co', :password => "123123"
u3 = User.create :user_name => "Alice", :email => 'alice@ga.co', :password => "123123"
puts "#{User.count} users"

Post.destroy_all
p1 = Post.create :title => "Cabinetry builder", :content => "We have a new house and would like a cabinetry maker to come in and work with us on building the following items:kitchen table bench,large shelving and desk,window seat with drawers"
p2 = Post.create :title => "Moving a dining table", :content => "A heavy dining table (help at pickup).Pickup location: Middle Cove NSW, Australia. Drop-off location: Lane Cove North NSW, Australia"
puts "#{Post.count} posts"

Status.destroy_all
s1 = Status.create :completion => "Seek Help"
s2 = Status.create :completion => "Done"
puts "#{Status.count} status"

Location.destroy_all
l1 = Location.create :name => "Greater Sydney"
l2 = Location.create :name => "Greater Melbourne"
l3 = Location.create :name => "Greater Brisbane"
l4 = Location.create :name => "Greater Perth"
l5 = Location.create :name => "Greater Adelaide"
l6 = Location.create :name => "Australian Capital Territory"
l7 = Location.create :name => "Greater Hobart"
l8 = Location.create :name => "Greater Darwin"
puts "#{Location.count} capital cities"

Comment.destroy_all
c1 = Comment.create :comment => "Hi there happy to help you. Let me know for make the booking. Thanks"
c2 = Comment.create :comment => "Heyy I can do that!"
c3 = Comment.create :comment => "Could you provide more infomation?"
puts "#{Comment.count} comments"

# Associations
puts "user and post"
u2.posts << p1
u3.posts << p2

puts "user and comment"
u2.comments << c1
u3.comments << c2
u3.comments << c3

puts "post and comment"
p1.comments << c1
p1.comments << c3
p2.comments << c2

puts "status and post"
s1.posts << p1
s1.posts << p2

puts "locations and post"
l2.posts << p1 << p2