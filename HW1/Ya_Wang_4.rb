class WrongNumberOfPlayersError< StandardError;end
class NoSuchStrategyError< StandardError;end
# a recursive DFS 
def rps_tournament_winner(tournament)
	if tournament[0][0].class == String
		return rps_game_winner(tournament)
	else
		return rps_tournament_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
	end
end

# winner of a single game
def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2
	raise NoSuchStrategyError unless game.all?{|player| player[1] =~ /[RPS]/}
	win_move = {"R"=>"P", "S"=>"R", "P"=>"S"}
	if game[1][1] == win_move[game[0][1]]
		game[1]
	else
		game[0]
	end
end