require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/logic.rb')
also_reload('./models/*')

get '/rock_paper_scissors/:player1/:player2' do

  player1 = params['player1'].chomp
  player2 = params['player2'].chomp
  @result = Logic.rock_paper_scissors(player1,player2)
 erb(:result)
end

get '/welcome' do
  erb(:welcome)
end

get '/rock_paper_scissors' do
  erb(:add_two_players)
end

get '/rock_paper_scissors/:player1' do
  erb(:add_one_player)
end

get '/' do
erb(:add_game)
end
