# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  ["South Africa & Botswana, 1997", "", 1],
  ["Australia, Victoria and New South Wales, 1998", "", 2],
  ["Crowthorne, United Kingdom, 1999", "", 3],
  ["Massachusetts, United States of America, 2000", "", 4],
  ["Kenya, Africa, 2001", "", 5],
  ["China, 2002", "", 6],
  ["France, 2003", "", 7],
  ["Bulgaria and Romania, 2004", "", 8],
  ["Guatemala, 2005", "", 9],
  ["Connecticut, United States of America, 2007", "", 10],
  ["Chiang Mai, Thailand, 2008", "", 11],
  ["Amman, Jordan, 2010", "", 12],
  ["South Africa & Botswana, 2011", "", 13],
  ["New Zealand, 2012", "", 14],
  ["Colombia, 2013", "", 15]
].each do |title, content, order|
  Post.create( title: title, content: content, order: order )
end
