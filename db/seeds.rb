# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
#create three for test
Product.create(
  title: 'Robin',
  price: '3.2',
  intro: 'He is on sale')
Product.create(
  title: 'Chocolate',
  price: '4.4',
  intro: 'sweet')
Product.create(
  title: 'apple',
  price: '5.2',
  intro: 'sour')