module Tennis
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