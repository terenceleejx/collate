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
admin.save

smartphone = Topic.new
smartphone.name = 'smartphones'
smartphone.save

singapore = Topic.new
singapore.name = 'Singapore'
singapore.save

malaysia = Topic.new
malaysia.name = 'Malaysia'
malaysia.save

australia = Topic.new
australia.name = 'Australia'
australia.save

china = Topic.new
china.name = 'China'
china.save

unit = Unit.new
unit.name = 'percentage'
unit.save

penetration = QuantityType.new
penetration.name = 'penetration'
penetration.save

source = Source.new
source.URL = 'http://www.techinasia.com/nielsen-report-smartphone-adoption-gap-asia-pacific/'
source.title = 'Nielsen report: the smartphone adoption gap in Asia Pacific'
source.save

quantitySG = Quantity.new
quantitySG.quantity_type_id = 1
quantitySG.number = 0.87
quantitySG.source_id = 1
quantitySG.unit_id = 1
quantitySG.save

quantityMY = Quantity.new
quantityMY.quantity_type_id = 1
quantityMY.number = 0.80
quantityMY.source_id = 1
quantityMY.unit_id = 1
quantityMY.save

quantityAU = Quantity.new
quantityAU.quantity_type_id = 1
quantityAU.number = 0.75
quantityAU.source_id = 1
quantityAU.unit_id = 1
quantityAU.save

quantityCN = Quantity.new
quantityCN.quantity_type_id = 1
quantityCN.number = 0.71
quantityCN.source_id = 1
quantityCN.unit_id = 1
quantityCN.save

country = Category.new
country.name = 'country'
country.save

sgcountry = CategoryTopic.new
sgcountry.category_id = 1
sgcountry.topic_id = 2
sgcountry.save

sgquantity = QuantityTopic.new
sgquantity.topic_id = 5
sgquantity.quantity_id = 4
sgquantity.save

myquantity = QuantityTopic.new
myquantity.topic_id = 2
myquantity.quantity_id = 1
myquantity.save

auquantity = QuantityTopic.new
auquantity.topic_id = 3
auquantity.quantity_id = 2
auquantity.save

cnquantity = QuantityTopic.new
cnquantity.topic_id = 4
cnquantity.quantity_id = 3
cnquantity.save

sgp = QuantityTopic.new
sgp.topic_id = 1
sgp.quantity_id = 1
sgp.save

myp = QuantityTopic.new
myp.topic_id = 1
myp.quantity_id = 2
myp.save

aup = QuantityTopic.new
aup.topic_id = 1
aup.quantity_id = 3
aup.save

cnp = QuantityTopic.new
cnp.topic_id = 1
cnp.quantity_id = 4
cnp.save
