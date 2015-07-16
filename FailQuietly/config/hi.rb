require 'sinatra'

get '/hi' do
  "Hello World!"
end

get '/bottles' do
	99.downto(0).map do |n|
		"#{n} bottles of beer on the wall"
	end
end