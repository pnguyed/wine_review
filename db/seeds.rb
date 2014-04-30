# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wine.delete_all
Wine.create(name:'Whiskey', year:'1957', winery:'Run Creek Vineyard', country:'USA', varietal:'barley')
Wine.create(name:'Scott', year:'1962', winery:'Scott Cellars', country:'UK', varietal:'apple')
Wine.create(name:'Vodka', year:'1980', winery:'DiVine', country:'Russia', varietal:'ethanol')