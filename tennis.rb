module Tennis
  class Match
    @@sets_played = 0
    attr_accessor :set1, :set2, :set3, :set4, :set5

    def initialize
      @set1 = Set.new
      @set2 = Set.new
      @set3 = Set.new
      @set4 = Set.new
      @set5 = Set.new
    end

    def match_score
      puts "#{@set1.set_winner} set 1, #{@set2.set_winner} set 2, #{@set3.set_winner} set 3, #{@set4.set_winner} set 4, #{@set5.set_winner} set 5."
    end

    # def game1_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game1.player1.record_won_ball!
    #   else
    #     self.set1.game1.player2.record_won_ball!
    #   end
    #   puts self.set1.game1.game_score
    # end

    # def play_game1
    #     until self.set1.game1.game_score === "game: Player1 Bill" || self.set1.game1.game_score === "game: Player2 Ted" 
    #       self.game1_play_point 
    #     end
    # end

    # def game2_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game2.player1.record_won_ball!
    #   else
    #     self.set1.game2.player2.record_won_ball!
    #   end
    #   puts self.set1.game2.game_score
    # end

    # def play_game2
    #     until self.set1.game2.game_score === "game: Player1 Bill" || self.set1.game2.game_score === "game: Player2 Ted" 
    #       self.game2_play_point 
    #     end
    # end

    # def game3_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game3.player1.record_won_ball!
    #   else
    #     self.set1.game3.player2.record_won_ball!
    #   end
    #   puts self.set1.game3.game_score
    # end

    # def play_game3
    #     until self.set1.game3.game_score === "game: Player1 Bill" || self.set1.game3.game_score === "game: Player2 Ted" 
    #       self.game3_play_point 
    #     end
    # end

    # def game4_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game4.player1.record_won_ball!
    #   else
    #     self.set1.game4.player2.record_won_ball!
    #   end
    #   puts self.set1.game4.game_score
    # end

    # def play_game4
    #     until self.set1.game4.game_score === "game: Player1 Bill" || self.set1.game4.game_score === "game: Player2 Ted" 
    #       self.game4_play_point 
    #     end
    # end

    # def game5_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game5.player1.record_won_ball!
    #   else
    #     self.set1.game5.player2.record_won_ball!
    #   end
    #   puts self.set1.game5.game_score
    # end

    # def play_game5
    #     until self.set1.game5.game_score === "game: Player1 Bill" || self.set1.game5.game_score === "game: Player2 Ted" 
    #       self.game5_play_point 
    #     end
    # end

    # def game6_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game6.player1.record_won_ball!
    #   else
    #     self.set1.game6.player2.record_won_ball!
    #   end
    #   puts self.set1.game6.game_score
    # end

    # def play_game6
    #     until self.set1.game6.game_score === "game: Player1 Bill" || self.set1.game6.game_score === "game: Player2 Ted" 
    #       self.game6_play_point 
    #     end
    # end

    # def game7_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game7.player1.record_won_ball!
    #   else
    #     self.set1.game7.player2.record_won_ball!
    #   end
    #   puts self.set1.game7.game_score
    # end

    # def play_game7
    #     until self.set1.game7.game_score === "game: Player1 Bill" || self.set1.game7.game_score === "game: Player2 Ted" 
    #       self.game7_play_point 
    #     end
    # end

    # def game8_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game8.player1.record_won_ball!
    #   else
    #     self.set1.game8.player2.record_won_ball!
    #   end
    #   puts self.set1.game8.game_score
    # end

    # def play_game8
    #     until self.set1.game8.game_score === "game: Player1 Bill" || self.set1.game8.game_score === "game: Player2 Ted" 
    #       self.game8_play_point 
    #     end
    # end

    # def game9_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game9.player1.record_won_ball!
    #   else
    #     self.set1.game9.player2.record_won_ball!
    #   end
    #   puts self.set1.game9.game_score
    # end

    # def play_game9
    #     until self.set1.game9.game_score === "game: Player1 Bill" || self.set1.game9.game_score === "game: Player2 Ted" 
    #       self.game9_play_point 
    #     end
    # end

    # def game10_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game10.player1.record_won_ball!
    #   else
    #     self.set1.game10.player2.record_won_ball!
    #   end
    #   puts self.set1.game10.game_score
    # end

    # def play_game10
    #     until self.set1.game10.game_score === "game: Player1 Bill" || self.set1.game10.game_score === "game: Player2 Ted" 
    #       self.game10_play_point 
    #     end
    # end

    # def game11_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game11.player1.record_won_ball!
    #   else
    #     self.set1.game11.player2.record_won_ball!
    #   end
    #   puts self.set1.game11.game_score
    # end

    # def play_game11
    #     until self.set1.game11.game_score === "game: Player1 Bill" || self.set1.game11.game_score === "game: Player2 Ted" 
    #       self.game11_play_point 
    #     end
    # end

    # def game12_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game12.player1.record_won_ball!
    #   else
    #     self.set1.game12.player2.record_won_ball!
    #   end
    #   puts self.set1.game12.game_score
    # end

    # def play_game12
    #     until self.set1.game12.game_score === "game: Player1 Bill" || self.set1.game12.game_score === "game: Player2 Ted" 
    #       self.game12_play_point 
    #     end
    # end

    # def game13_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set1.game13.player1.record_won_ball!
    #   else
    #     self.set1.game13.player2.record_won_ball!
    #   end
    #   puts self.set1.game13.game_score
    # end

    # def play_game13
    #     until self.set1.game13.game_score === "game: Player1 Bill" || self.set1.game13.game_score === "game: Player2 Ted" 
    #       self.game13_play_point 
    #     end
    # end


    # def play_set1
    #   puts self.play_game1
    #   puts self.set1.wins_game1
    #   puts self.set1.set_score
    #   puts self.play_game2
    #   puts self.set1.wins_game2
    #   puts self.set1.set_score
    #   puts self.play_game3
    #   puts self.set1.wins_game3
    #   puts self.set1.set_score
    #   puts self.play_game4
    #   puts self.set1.wins_game4
    #   puts self.set1.set_score
    #   puts self.play_game5
    #   puts self.set1.wins_game5
    #   puts self.set1.set_score
    #   puts self.play_game6
    #   puts self.set1.wins_game6
    #   puts self.set1.set_score
    #   if self.set1.player1_games_won <= 5 && self.set1.player2_games_won <= 5
    #     puts self.play_game7
    #     puts self.set1.wins_game7
    #     puts self.set1.set_score
    #     puts @set_winner
    #     if self.set1.player1_games_won <= 5 && self.set1.player2_games_won <= 5
    #       puts self.play_game8
    #       puts self.set1.wins_game8
    #       puts self.set1.set_score
    #       puts @set_winner
    #       if self.set1.player1_games_won <= 5 && self.set1.player2_games_won <= 5
    #         puts self.play_game9
    #         puts self.set1.wins_game9
    #         puts self.set1.set_score
    #         puts @set_winner
    #         if self.set1.player1_games_won <= 5 && self.set1.player2_games_won <= 5
    #           puts self.play_game10
    #           puts self.set1.wins_game10
    #           puts self.set1.set_score
    #           puts @set_winner
    #           if self.set1.player1_games_won < 6 && self.set1.player2_games_won < 6 
    #             puts self.play_game11
    #             puts self.set1.wins_game11
    #             puts self.set1.set_score
    #             puts @set_winner
    #             if self.set1.player1_games_won < 7 && self.set1.player2_games_won < 7
    #               puts self.play_game12
    #               puts self.set1.wins_game12
    #               puts self.set1.set_score
    #               puts @set_winner
    #               if self.set1.player1_games_won < 7 && self.set1.player2_games_won < 7
    #               puts self.play_game13
    #               puts self.set1.wins_game13
    #               puts self.set1.set_score
    #               puts @set_winner
    #               end
    #             end
    #           end
    #         end
    #       end
    #     end
    #   end

    # end

    # def game1_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game1.player1.record_won_ball!
    #   else
    #     self.set2.game1.player2.record_won_ball!
    #   end
    #   puts self.set2.game1.game_score
    # end

    # def play_game1
    #     until self.set2.game1.game_score === "game: Player1 Bill" || self.set2.game1.game_score === "game: Player2 Ted" 
    #       self.game1_play_point 
    #     end
    # end

    # def game2_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game2.player1.record_won_ball!
    #   else
    #     self.set2.game2.player2.record_won_ball!
    #   end
    #   puts self.set2.game2.game_score
    # end

    # def play_game2
    #     until self.set2.game2.game_score === "game: Player1 Bill" || self.set2.game2.game_score === "game: Player2 Ted" 
    #       self.game2_play_point 
    #     end
    # end

    # def game3_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game3.player1.record_won_ball!
    #   else
    #     self.set2.game3.player2.record_won_ball!
    #   end
    #   puts self.set2.game3.game_score
    # end

    # def play_game3
    #     until self.set2.game3.game_score === "game: Player1 Bill" || self.set2.game3.game_score === "game: Player2 Ted" 
    #       self.game3_play_point 
    #     end
    # end

    # def game4_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game4.player1.record_won_ball!
    #   else
    #     self.set2.game4.player2.record_won_ball!
    #   end
    #   puts self.set2.game4.game_score
    # end

    # def play_game4
    #     until self.set2.game4.game_score === "game: Player1 Bill" || self.set2.game4.game_score === "game: Player2 Ted" 
    #       self.game4_play_point 
    #     end
    # end

    # def game5_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game5.player1.record_won_ball!
    #   else
    #     self.set2.game5.player2.record_won_ball!
    #   end
    #   puts self.set2.game5.game_score
    # end

    # def play_game5
    #     until self.set2.game5.game_score === "game: Player1 Bill" || self.set2.game5.game_score === "game: Player2 Ted" 
    #       self.game5_play_point 
    #     end
    # end

    # def game6_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game6.player1.record_won_ball!
    #   else
    #     self.set2.game6.player2.record_won_ball!
    #   end
    #   puts self.set2.game6.game_score
    # end

    # def play_game6
    #     until self.set2.game6.game_score === "game: Player1 Bill" || self.set2.game6.game_score === "game: Player2 Ted" 
    #       self.game6_play_point 
    #     end
    # end

    # def game7_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game7.player1.record_won_ball!
    #   else
    #     self.set2.game7.player2.record_won_ball!
    #   end
    #   puts self.set2.game7.game_score
    # end

    # def play_game7
    #     until self.set2.game7.game_score === "game: Player1 Bill" || self.set2.game7.game_score === "game: Player2 Ted" 
    #       self.game7_play_point 
    #     end
    # end

    # def game8_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game8.player1.record_won_ball!
    #   else
    #     self.set2.game8.player2.record_won_ball!
    #   end
    #   puts self.set2.game8.game_score
    # end

    # def play_game8
    #     until self.set2.game8.game_score === "game: Player1 Bill" || self.set2.game8.game_score === "game: Player2 Ted" 
    #       self.game8_play_point 
    #     end
    # end

    # def game9_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game9.player1.record_won_ball!
    #   else
    #     self.set2.game9.player2.record_won_ball!
    #   end
    #   puts self.set2.game9.game_score
    # end

    # def play_game9
    #     until self.set2.game9.game_score === "game: Player1 Bill" || self.set2.game9.game_score === "game: Player2 Ted" 
    #       self.game9_play_point 
    #     end
    # end

    # def game10_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game10.player1.record_won_ball!
    #   else
    #     self.set2.game10.player2.record_won_ball!
    #   end
    #   puts self.set2.game10.game_score
    # end

    # def play_game10
    #     until self.set2.game10.game_score === "game: Player1 Bill" || self.set2.game10.game_score === "game: Player2 Ted" 
    #       self.game10_play_point 
    #     end
    # end

    # def game11_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game11.player1.record_won_ball!
    #   else
    #     self.set2.game11.player2.record_won_ball!
    #   end
    #   puts self.set2.game11.game_score
    # end

    # def play_game11
    #     until self.set2.game11.game_score === "game: Player1 Bill" || self.set2.game11.game_score === "game: Player2 Ted" 
    #       self.game11_play_point 
    #     end
    # end

    # def game12_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game12.player1.record_won_ball!
    #   else
    #     self.set2.game12.player2.record_won_ball!
    #   end
    #   puts self.set2.game12.game_score
    # end

    # def play_game12
    #     until self.set2.game12.game_score === "game: Player1 Bill" || self.set2.game12.game_score === "game: Player2 Ted" 
    #       self.game12_play_point 
    #     end
    # end

    # def game13_play_point
    #   x = rand(0..1)
    #   if x == 1
    #     self.set2.game13.player1.record_won_ball!
    #   else
    #     self.set2.game13.player2.record_won_ball!
    #   end
    #   puts self.set2.game13.game_score
    # end

    # def play_game13
    #     until self.set2.game13.game_score === "game: Player1 Bill" || self.set2.game13.game_score === "game: Player2 Ted" 
    #       self.game13_play_point 
    #     end
    # end

    def play_match
      self.set1.play_set
      self.set2.play_set
      self.set3.play_set
      self.set4.play_set
      self.set5.play_set
      puts self.match_score
    end
  end
  

  class Set
    attr_accessor :game1, :game2, :game3, :game4, :game5, :game6, :game7, :game8, :game9, :game10, :game11, :game12, :game13, :player1_games_won, :player2_games_won, :set_winner
    
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
      @set_winner = "undetermined"
    end

    def game1_play_point
      x = rand(0..1)
      if x == 1
        self.game1.player1.record_won_ball!
      else
        self.game1.player2.record_won_ball!
      end
      puts self.game1.game_score
    end

    def play_game1
        until self.game1.game_score === "game: Player1 Bill" || self.game1.game_score === "game: Player2 Ted" 
          self.game1_play_point 
        end
    end

    def game2_play_point
      x = rand(0..1)
      if x == 1
        self.game2.player1.record_won_ball!
      else
        self.game2.player2.record_won_ball!
      end
      puts self.game2.game_score
    end

    def play_game2
        until self.game2.game_score === "game: Player1 Bill" || self.game2.game_score === "game: Player2 Ted" 
          self.game2_play_point 
        end
    end

    def game3_play_point
      x = rand(0..1)
      if x == 1
        self.game3.player1.record_won_ball!
      else
        self.game3.player2.record_won_ball!
      end
      puts self.game3.game_score
    end

    def play_game3
        until self.game3.game_score === "game: Player1 Bill" || self.game3.game_score === "game: Player2 Ted" 
          self.game3_play_point 
        end
    end

    def game4_play_point
      x = rand(0..1)
      if x == 1
        self.game4.player1.record_won_ball!
      else
        self.game4.player2.record_won_ball!
      end
      puts self.game4.game_score
    end

    def play_game4
        until self.game4.game_score === "game: Player1 Bill" || self.game4.game_score === "game: Player2 Ted" 
          self.game4_play_point 
        end
    end

    def game5_play_point
      x = rand(0..1)
      if x == 1
        self.game5.player1.record_won_ball!
      else
        self.game5.player2.record_won_ball!
      end
      puts self.game5.game_score
    end

    def play_game5
        until self.game5.game_score === "game: Player1 Bill" || self.game5.game_score === "game: Player2 Ted" 
          self.game5_play_point 
        end
    end

    def game6_play_point
      x = rand(0..1)
      if x == 1
        self.game6.player1.record_won_ball!
      else
        self.game6.player2.record_won_ball!
      end
      puts self.game6.game_score
    end

    def play_game6
        until self.game6.game_score === "game: Player1 Bill" || self.game6.game_score === "game: Player2 Ted" 
          self.game6_play_point 
        end
    end

    def game7_play_point
      x = rand(0..1)
      if x == 1
        self.game7.player1.record_won_ball!
      else
        self.game7.player2.record_won_ball!
      end
      puts self.game7.game_score
    end

    def play_game7
        until self.game7.game_score === "game: Player1 Bill" || self.game7.game_score === "game: Player2 Ted" 
          self.game7_play_point 
        end
    end

    def game8_play_point
      x = rand(0..1)
      if x == 1
        self.game8.player1.record_won_ball!
      else
        self.game8.player2.record_won_ball!
      end
      puts self.game8.game_score
    end

    def play_game8
        until self.game8.game_score === "game: Player1 Bill" || self.game8.game_score === "game: Player2 Ted" 
          self.game8_play_point 
        end
    end

    def game9_play_point
      x = rand(0..1)
      if x == 1
        self.game9.player1.record_won_ball!
      else
        self.game9.player2.record_won_ball!
      end
      puts self.game9.game_score
    end

    def play_game9
        until self.game9.game_score === "game: Player1 Bill" || self.game9.game_score === "game: Player2 Ted" 
          self.game9_play_point 
        end
    end

    def game10_play_point
      x = rand(0..1)
      if x == 1
        self.game10.player1.record_won_ball!
      else
        self.game10.player2.record_won_ball!
      end
      puts self.game10.game_score
    end

    def play_game10
        until self.game10.game_score === "game: Player1 Bill" || self.game10.game_score === "game: Player2 Ted" 
          self.game10_play_point 
        end
    end

    def game11_play_point
      x = rand(0..1)
      if x == 1
        self.game11.player1.record_won_ball!
      else
        self.game11.player2.record_won_ball!
      end
      puts self.game11.game_score
    end

    def play_game11
        until self.game11.game_score === "game: Player1 Bill" || self.game11.game_score === "game: Player2 Ted" 
          self.game11_play_point 
        end
    end

    def game12_play_point
      x = rand(0..1)
      if x == 1
        self.game12.player1.record_won_ball!
      else
        self.game12.player2.record_won_ball!
      end
      puts self.game12.game_score
    end

    def play_game12
        until self.game12.game_score === "game: Player1 Bill" || self.game12.game_score === "game: Player2 Ted" 
          self.game12_play_point 
        end
    end

    def game13_play_point
      x = rand(0..1)
      if x == 1
        self.game13.player1.record_won_ball!
      else
        self.game13.player2.record_won_ball!
      end
      puts self.game13.game_score
    end

    def play_game13
        until self.game13.game_score === "game: Player1 Bill" || self.game13.game_score === "game: Player2 Ted" 
          self.game13_play_point 
        end
    end


    def play_set
      puts play_game1
      puts self.wins_game1
      puts self.set_score
      puts play_game2
      puts self.wins_game2
      puts self.set_score
      puts play_game3
      puts self.wins_game3
      puts self.set_score
      puts play_game4
      puts self.wins_game4
      puts self.set_score
      puts play_game5
      puts self.wins_game5
      puts self.set_score
      puts play_game6
      puts self.wins_game6
      puts self.set_score
      if self.player1_games_won <= 5 && self.player2_games_won <= 5
        puts play_game7
        puts self.wins_game7
        puts self.set_score
        puts @set_winner
        if self.player1_games_won <= 5 && self.player2_games_won <= 5
          puts play_game8
          puts self.wins_game8
          puts self.set_score
          puts @set_winner
          if self.player1_games_won <= 5 && self.player2_games_won <= 5
            puts play_game9
            puts self.wins_game9
            puts self.set_score
            puts @set_winner
            if self.player1_games_won <= 5 && self.player2_games_won <= 5
              puts play_game10
              puts self.wins_game10
              puts self.set_score
              puts @set_winner
              if self.player1_games_won < 6 && self.player2_games_won < 6 
                puts play_game11
                puts self.wins_game11
                puts self.set_score
                puts @set_winner
                if self.player1_games_won < 7 && self.player2_games_won < 7
                  puts play_game12
                  puts self.wins_game12
                  puts self.set_score
                  puts @set_winner
                  if self.player1_games_won < 7 && self.player2_games_won < 7
                  puts play_game13
                  puts self.wins_game13
                  puts self.set_score
                  puts @set_winner
                  end
                end
              end
            end
          end
        end
      end
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

    def wins_game4 
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

    def set_score
      unless self.player1_games_won >= 6 || self.player2_games_won >= 6
      return "#{self.player1_games_won} games to #{self.player2_games_won}"
      end
      if self.player1_games_won == 6 && self.player2_games_won < 5
        if @set_winner == "undetermined" 
          @set_winner = "#{game1.player1.name}"
        end
        return "#{game1.player1.name} wins the set #{self.player1_games_won} games to #{self.player2_games_won}" 
      elsif self.player2_games_won == 6 && self.player1_games_won < 5
        if @set_winner == "undetermined"
          @set_winner = "#{game1.player2.name}"
        end
        return "#{game1.player2.name} wins the set #{self.player2_games_won} games to #{self.player1_games_won}"
      elsif self.player1_games_won == 7
        if @set_winner == "undetermined"
          @set_winner = "#{game1.player1.name}"
        end
        return "#{game1.player1.name} wins the set #{self.player1_games_won} games to #{self.player2_games_won}"
      elsif self.player2_games_won == 7
        if @set_winner == "undetermined"
          @set_winner = "#{game1.player2.name}"
        end
        return "#{game1.player2.name} wins the set #{self.player2_games_won} games to #{self.player1_games_won}"
      else
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