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

unit = Unit.new
unit.name = 'percentage'
unit.quantity_id = 1
unit.save!

quantity = Quantity.new
quantity.name = 'penetration'
quantity.number = 0.87
quantity.source_id = 1
quantity.save!

country = Category.new
country.name = 'country'
country.save!

source = Source.new
source.URL = 'http://www.techinasia.com/nielsen-report-smartphone-adoption-gap-asia-pacific/'
source.title = 'Nielsen report: the smartphone adoption gap in Asia Pacific'
source.save!
