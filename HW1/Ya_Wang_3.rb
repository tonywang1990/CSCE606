class WrongNumberOfPlayersError< StandardError;end
class NoSuchStrategyError< StandardError;end

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