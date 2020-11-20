# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
uri = URI('https://developers.zomato.com/api/v2.1/cities')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})

request.body = {} # SOME JSON DATA e.g {msg: 'Why'}.to_json

response = http.request(request)

body = JSON.parse(response.body) # e.g {answer: 'because it was there'}