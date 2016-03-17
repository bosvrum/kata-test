# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ruby, java, python = ['ruby', 'java', 'python'].map do |name|
  Language.where(name: name).first_or_create!
end

['rails','sinatra'].each do |name|
  ruby.frameworks.where(name: name).first_or_create!
end

['django','django2'].each do |name|
  python.frameworks.where(name: name).first_or_create!
end
['Spring'].each do |name|
  java.frameworks.where(name: name).first_or_create!
end