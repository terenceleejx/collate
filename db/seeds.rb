# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = Admin.new
admin.email = 'terence.lee.jx@gmail.com'
admin.password = 'testpassword'
admin.password_confirmation = 'testpassword'
admin.save!

smartphone = Topic.new
smartphone.name = 'smartphones'
smartphone.save!

singapore = Topic.new
singapore.name = 'Singapore'
singapore.save!

malaysia = Topic.new
malaysia.name = 'Malaysia'
malaysia.save!

australia = Topic.new
australia.name = 'Australia'
australia.save!

china = Topic.new
china.name = 'China'
china.save!

unit = Unit.new
unit.name = 'percentage'
unit.save!

quantitySG = Quantity.new
quantitySG.name = 'penetration'
quantitySG.number = 0.87
quantitySG.source_id = 1
quantitySG.unit_id = 1
quantitySG.save!

quantityMY = Quantity.new
quantityMY.name = 'penetration'
quantityMY.number = 0.80
quantityMY.source_id = 1
quantityMY.unit_id = 1
quantityMY.save!

quantityAU = Quantity.new
quantityAU.name = 'penetration'
quantityAU.number = 0.75
quantityAU.source_id = 1
quantityAU.unit_id = 1
quantityAU.save!

quantityCN = Quantity.new
quantityCN.name = 'penetration'
quantityCN.number = 0.71
quantityCN.source_id = 1
quantityCN.unit_id = 1
quantityCN.save!

country = Category.new
country.name = 'country'
country.save!

sgcountry = CategoryTopic.new
sgcountry.category_id = 1
sgcountry.topic_id = 2
sgcountry.save!

source = Source.new
source.URL = 'http://www.techinasia.com/nielsen-report-smartphone-adoption-gap-asia-pacific/'
source.title = 'Nielsen report: the smartphone adoption gap in Asia Pacific'
source.save!
