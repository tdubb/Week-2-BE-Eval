module Tennis
  class Match
    attr_accessor :game1, :game2, :game3, :game4, :game5, :game6, :game7, :game8, :game9, :game10, :game11, :game12, :game13, :player1_games_won, :player2_games_won
    
    def initialize
      @game1 = Game.new
      @game2 = Game.new
      @game3 = Game.new
      @game4 = Game.new
      @game5 = Game.new
      @game6 = Game.new
      @game7 = Game.new
      @game8 = Game.new
      @game9 = Game.new
      @game10 = Game.new
      @game11 = Game.new
      @game12 = Game.new
      @game13 = Game.new
      @player1_games_won = 0
      @player2_games_won = 0
    end

    def wins_game1 
      if self.game1.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game1.game_score
      elsif self.game1.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game1.game_score
      else
        return "game not over"
      end
    end

    def wins_game2 
      if self.game2.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game2.game_score
      elsif self.game2.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game2.game_score
      else
        return "game not over"
      end
    end

     def wins_game3 
      if self.game3.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game3.game_score
      elsif self.game3.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game3.game_score
      else
        return "game not over"
      end
    end 

    def 

      wins_game4 
      if self.game4.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game4.game_score
      elsif self.game4.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game4.game_score
      else
        return "game not over"
      end
    end 

    def wins_game5 
      if self.game5.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game5.game_score
      elsif self.game5.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game5.game_score
      else
        return "game not over"
      end
    end 

    def wins_game6 
      if self.game6.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game6.game_score
      elsif self.game6.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game6.game_score
      else
        return "game not over"
      end
    end 

    def wins_game7 
      if self.game7.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game7.game_score
      elsif self.game7.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game7.game_score
      else
        return "game not over"
      end
    end 

    def wins_game8 
      if self.game8.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game8.game_score
      elsif self.game8.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game8.game_score
      else
        return "game not over"
      end
    end 

    def wins_game9 
      if self.game9.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game9.game_score
      elsif self.game9.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game9.game_score
      else
        return "game not over"
      end
    end 

    def wins_game10 
      if self.game10.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game10.game_score
      elsif self.game10.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game10.game_score
      else
        return "game not over"
      end
    end 

    def wins_game11 
      if self.game11.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game11.game_score
      elsif self.game11.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game11.game_score
      else
        return "game not over"
      end
    end 

    def wins_game12 
      if self.game12.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game12.game_score
      elsif self.game12.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game12.game_score
      else
        return "game not over"
      end
    end 

    def wins_game13 
      if self.game13.game_score == "game: Player1 Bill"
        @player1_games_won += 1
        return self.game13.game_score
      elsif self.game13.game_score == "game: Player2 Ted"
        @player2_games_won += 1
        return self.game13.game_score
      else
        return "game not over"
      end
    end

    def match_score
      unless self.player1_games_won >= 6 || self.player2_games_won >= 6
      return "#{self.player1_games_won} games to #{self.player2_games_won}"
      end
      if self.player1_games_won == 6 && self.player2_games_won <= 4
        return "#{game1.player1.name} wins the match #{self.player1_games_won} games to #{self.player2_games_won}" 
      elsif self.player2_games_won == 6 && self.player1_games_won <= 4
        return "#{game2.player2.name} wins the match #{self.player2_games_won} games to #{self.player1_games_won}"
      elsif self.player1_games_won == 7
        return "#{game1.player1.name} wins the match #{self.player1_games_won} games to #{self.player2_games_won}"
      else self.player2_games_won == 7
        "#{game2.player1.name} wins the match #{self.player2_games_won} games to #{self.player1_games_won}"
      end
    end


  end

  class Game
    attr_accessor :player1, :player2, :score

    def initialize
      @player1 = Player.new("Player1 Bill")
      @player2 = Player.new("Player2 Ted")

      @player1.opponent = @player2
      @player2.opponent = @player1
    end

    # Records a win for a ball in a game.
    #
    # winner - The Integer (1 or 2) representing the winning player.
    #
    # Returns the score of the winning player. 
    def wins_ball(winner)
      if winner == 1
        winning_player = @player1
      else
        winning_player = @player2
      end

      winning_player.record_won_ball!
    end


# This method cycles through scoring: first if a player wins, second
# if a player has advantange, third if score is deuce, fourth if score is tied.
# and finally if one player is ahead of the other.
    

    def game_score
    
      if (@player1.points > 3 || @player2.points > 3) && (@player2.points - @player1.points > 1 || @player1.points - @player2.points > 1)
        return "#{@player1.score}"
      elsif (@player1.points >= 3 && @player2.points >= 3) && (@player2.points - @player1.points == 1 || @player1.points - @player2.points == 1)
        return "#{@player1.score}"
      elsif @player1.points >= 3 && @player2.points - @player1.points == 0
        return "#{@player1.score}"
      elsif @player1.points == @player2.points && @player1.points < 3 
        return "#{@player1.score} all"
      elsif @player1.points != @player2.points && @player1.points <= 3 && @player2.points <= 3 
        return "#{@player1.score}: #{@player2.score}"
      else
        return "this is an unfamiliar scoring situation"
      end
    end
  end

  

  class Player
    attr_accessor :points, :opponent, :name

    def initialize(name) 
      @points = 0
      @name = name
    end


    # Increments the score by 1.
    #
    # Returns the integer new score.
    def record_won_ball!
      @points += 1
      return @points
    end



    # Returns the String score for the player.
    # This handles deuce advantage and winning the game
    def score
      unless self.opponent.points > 3 
      return 'love' if @points == 0
      return 'fifteen' if @points == 1
      return 'thirty' if @points == 2
      end
      if @points == 3 && (self.opponent.points < 3)
        return 'forty' 
      elsif @points - self.opponent.points == 0 
        return 'deuce'
      elsif @points - self.opponent.points == 1
        return "advantage: #{self.name}"
      elsif self.opponent.points - @points == 1
        return "advantage: #{self.opponent.name}"
      elsif @points - self.opponent.points >= 2
        return "game: #{self.name}"
      else 
        return "game: #{self.opponent.name}"
      end

    end
  end
end