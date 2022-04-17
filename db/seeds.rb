# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create :user_name => "Mandy", :email => 'mandy@ga.co', :password => "123123", :image => "/assets/user.jpg"
u2 = User.create :user_name => "Vinnie", :email => 'vinnie@ga.co', :password => "123123", :image => "/assets/user.jpg"
u3 = User.create :user_name => "Alice", :email => 'alice@ga.co', :password => "123123", :image => "/assets/user.jpg"
puts "#{User.count} users"

Post.destroy_all
p1 = Post.create :title => "Cabinetry builder", :content => "We have a new house and would like a cabinetry maker to come in and work with us on building the following items:\r\nkitchen table bench,large shelving and desk,window seat with drawers", :price => 400, :address => "94 Kent Street, Millers Point, NSW 2000"
p2 = Post.create :title => "Moving a dining table", :content => "A heavy dining table (help at pickup).Pickup location: Middle Cove NSW, Australia. \r\nDrop-off location: Lane Cove North NSW, Australia", :price => 100, :address => "610 Mowbray Road,Lane Cove North NSW, Australia"
p3 = Post.create :title => "Recreate a logo", :content => "I have an existing logo that I have a photo image of, but no longer have the artwork/original files. I need to have the logo recreated and produced in all common file types for use on web, stationary etc.", :price => 20, :address => "82 Hay St, Haymarket, NSW 2000"
p4 = Post.create :title => "Clean our 1br apartment", :content => "Clean 1br apartment.\r\nBathroom \r\nKitchen\r\nWalls\r\nMirrors\r\nMop floors\r\nWipe cabinets ", :price => 220, :address => "45 Balfour Street, Chippendale, NSW 2008"
p5 = Post.create :title => "Cleaner needed", :content => "Two bedroom unit for weekly cleaning - inc ironing etc ", :price => 90, :address => "47 Lansdowne Street, Surry Hills, NSW 2010"
p6 = Post.create :title => "Help to put out stuff for council clean up", :content => "Hi I have a number of items I need moved to the curbside to prepare for a council cleanup on Tuesday \r\nitems include a three seater leather lounge would require two strong people to lift \r\n4 four chairs 5 stools coffee table and carpet that’s in the carport that is already close to the curbside would need to be done tomorrow Monday or Tuesday morning ", :price => 150, :address => "45 Betula Ave, Vermont, Melbourne"
p7 = Post.create :title => "Steering wheel rods broken", :content => "the steering wheel is broken and cant drive car just waiting still for the part to come", :price => 75, :address => "131 Swanston St, Melbourne"
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
c4 = Comment.create :comment => "I am ready to do it and will give you original files as well"
c5 = Comment.create :comment => "Heyy I can do that!"
puts "#{Comment.count} comments"

# Associations
puts "user and post"
u2.posts << p1 << p2 << p3 << p4 << p5 
u3.posts << p6 << p7

puts "user and comment"
u2.comments << c5
u3.comments << c2 << c3 << c4
u1.comments << c1


puts "post and comment"
p1.comments << c1
p1.comments << c3
p2.comments << c2
p3.comments << c4
p6.comments << c5

puts "status and post"
s1.posts << p1 << p2 << p3 << p4 << p5 << p6 << p7

puts "locations and post"
l1.posts << p1 << p2 << p3 << p4 << p5 
l2.posts << p6 << p7