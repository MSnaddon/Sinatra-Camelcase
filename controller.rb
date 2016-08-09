require ('sinatra')
require ('sinatra/contrib/all')
require('json')
require_relative('models/string.rb')
require('pry-byebug')

get "/" do
  @name = "Harold, DARK LORD OF ALL!"
  erb (:home)
end

get "/address" do 
  content_type(:json)
  address = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE', 
    postcode: 'e13 zqf', 
    phone: '0131558030' 
  }
  address[:postcode] = address[:postcode].uppercase
  return address.to_json()
end

get "/:camelcase" do
  @result = params[:camelcase].camelcase
  erb(:camel)
end