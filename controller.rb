require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/logic.rb')
also_reload('./models/*')

get ('/rock_paper_scissors/:player1/:player2')do
  player1 = params['player1'].downcase
  player2 = params['player2'].downcase
  @result = Logic.rock_paper_scissors(player1,player2)
 erb(:result)
end
