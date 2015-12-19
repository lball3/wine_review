# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do

Wine.create([
{ name: 'Riesling',year: 1990, winery: 'Old Vine of riesling',country: 'Germany', varietal: 'lighter than Chardonnay'},
{ name: 'Chardonnay',year: 1990, winery: 'Chardonnay vine',country: 'France', varietal: 'wider-bodied than other dry wines'},
{ name: 'Sauvignon Blanc',year: 2000, winery: 'Sauvignon blanc',country: 'Australian', varietal: 'lighter than Chardonnay'},
{ name: 'Syrah',year: 1980, winery: 'Syrah vine',country: 'France', varietal: 'hearty, spicy red'},
{ name: 'Merlot',year: 1970, winery: 'Merlot vine',country: 'U.S.', varietal: 'black-cherry and herbal flavours'},
{ name: 'Cabernet Sauvignon',year: 1965, winery: 'Cabernet sauvignon',country: 'Germany', varietal: 'full-bodied, but firm'}
  ])
  
end 
