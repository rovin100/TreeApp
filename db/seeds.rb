# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.where(name: "Amy P",email: "xyz@xxyz.com").first

unless user
	user = User.create(name: "Amy P",email: "xyz@xxyz.com", password: "12345678", password_confirmation: "12345678")
end
user.sub_users.create(name: "Billy P")
user = User.where(name: "Brian B",email: "xyz1@xxyz.com").first
unless user
	user = User.create(name: "Brian B",email: "xyz1@xxyz.com", password: "12345678", password_confirmation: "12345678")
end
user.sub_users.create(name: "Kelly B")
user.sub_users.create(name: "Janet B")
Category.create([{name: "Standard A"},{name: "Standard B"},{name: "Standard C"}])
Category.where(name: "Standard A").first.sub_categories.create([{name: "SubStandard A"},{name: "SubStandard B"}])
Category.where(name: "Standard B").first.sub_categories.create([{name: "SubStandard C"},{name: "SubStandard E"},{name: "SubStandard F"}])
Category.where(name: "Standard C").first.sub_categories.create([{name: "SubStandard D"},{name: "SubStandard G"}])
SubCategory.where(name: "SubStandard A").first.topics.create([
	{name: "TOPIC1", description: "This topic is nice", url: "http://www.topic1.com"},
	{name: "TOPIC8", description: "This topic is sour", url: "http://www.topic8.com"},
	{name: "TOPIC9", description: "This topic is bland", url: "http://www.topic9.com"}
])
SubCategory.where(name: "SubStandard B").first.topics.create([
	{name: "TOPIC2", description: "This topic rocks", url: "http://www.topic2.com"},
	{name: "TOPIC10", description: "This topic is spicy", url: "http://www.topic10.com"}])
SubCategory.where(name: "SubStandard C").first.topics.create([
	{name: "TOPIC3", description: "This topic rules", url: "http://www.topic3.com"}])
SubCategory.where(name: "SubStandard D").first.topics.create([
	{name: "TOPIC4", description: "This topic is boring", url: "http://www.topic4.com"}])
SubCategory.where(name: "SubStandard E").first.topics.create([
	{name: "TOPIC5", description: "This topic is neat", url: "http://www.topic5.com"}])
SubCategory.where(name: "SubStandard F").first.topics.create([
	{name: "TOPIC6", description: "This topic is dirty", url: "http://www.topic6.com"}])
SubCategory.where(name: "SubStandard G").first.topics.create([
	{name: "TOPIC7", description: "This topic is sweet", url: "http://www.topic7.com"}])
sub_user1 = SubUser.where(name: "Billy P").first

 sub_user1.categories = Category.where("name= 'Standard A' or name= 'Standard B'")
# category1.sub_users = sub_user2
# sub_user.save!
