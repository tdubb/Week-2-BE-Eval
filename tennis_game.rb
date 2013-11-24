require_relative 'tennis.rb'


match = Tennis::Match.new
# def play_point
# 	x = rand(0..1)
# 	if x == 1
# 		match.set1.game1.player1.record_won_ball!
# 	else
# 		match.set1.game1.player2.record_won_ball!
# 	end
# 	puts match.set1.game1.game_score
# end

# def play_game
# 	while match.set1.game1.game_score != "game: Player1 Bill" || match.set1.game1.game_score != "game: Player2 Ted" 
# 		play_point
# 	end
# 	match.set1.game1.game_score
# end

match.play_match



