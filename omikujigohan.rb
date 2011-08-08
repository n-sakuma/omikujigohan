require 'sinatra'
require 'erb'
require './menu'

get '/' do
  erb :index
end

post '/result' do
  menulist = params.select{|k, v| (k =~ /^item\d+$/) && !(v.empty?) }.values
  @menu = Menu.new(menulist.empty? ? nil : menulist)
  erb :result
end
