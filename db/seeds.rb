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


