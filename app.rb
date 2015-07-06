require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, "sqlite3:chatterBoxDB.sqlite3"

get '/' do
  erb :index
end

get '/account' do
  erb :account
end

$arrUsers = []
$arrAccounts = []
$arrPosts = []

post '/newpost' do
  $arrPosts << Post.create(:user_id => 1, :content => params[:content], :time_posted => Time.now.to_s).to_json
end

post '/signup' do
  $arrUsers << User.create(:username => params[:username]).to_json
  $arrAccounts << Account.create(:password => params[:password], :full_name => params[:full_name], :bio => params[:bio]).to_json
  "Users: " + $arrUsers.to_s + " Posts: " + $arrAccounts.to_s
end