require 'pry'
require 'rubygems'
require 'bundler/setup'
require 'rspec'


require_relative '../tennis'

describe Tennis::Match do
  let(:match) { Tennis::Match.new}

  describe '.initialize' do
    it 'creates 5 sets' do
      expect(match.set1).to be_a(Tennis::Set)
      expect(match.set2).to be_a(Tennis::Set)
      expect(match.set3).to be_a(Tennis::Set)
      expect(match.set4).to be_a(Tennis::Set)
      expect(match.set5).to be_a(Tennis::Set)
    end
  end

  describe '#match_score' do
    it 'returns the score of a match' do
      match.set1.set_winner = 'Player1 Bill'
      match.set2.set_winner = 'Player2 Ted'
      match.set3.set_winner
      match.set4.set_winner
      match.set5.set_winner

      expect(match.match_score).to eq("Player1 Bill set 1, Player2 Ted set 2, undetermined set 3, undetermined set 4, undetermined set 5.")
    end
  end
end

describe Tennis::Set do
  let(:set) { Tennis::Set.new}

  describe '.initialize' do
    it 'creates 13 games' do
      expect(set.game1).to be_a(Tennis::Game)
      expect(set.game2).to be_a(Tennis::Game)
      expect(set.game3).to be_a(Tennis::Game)
      expect(set.game4).to be_a(Tennis::Game)
      expect(set.game5).to be_a(Tennis::Game)
      expect(set.game6).to be_a(Tennis::Game)
      expect(set.game7).to be_a(Tennis::Game)
      expect(set.game8).to be_a(Tennis::Game)
      expect(set.game9).to be_a(Tennis::Game)
      expect(set.game10).to be_a(Tennis::Game)
      expect(set.game11).to be_a(Tennis::Game)
      expect(set.game12).to be_a(Tennis::Game)
      expect(set.game13).to be_a(Tennis::Game)
    end
  end

  describe '#wins_game1' do
    it 'returns the winner of the game' do
      set.game1.player1.points = 4
      set.game1.player2.points = 0

      expect(set.wins_game1).to eq ('game: Player1 Bill') 
    end
    it 'returns game not over' do
      set.game1.player1.points = 2
      set.game1.player2.points = 3

      expect(set.wins_game1).to eq ('game not over') 
    end
  end

  describe '#playerx_game_won' do
    it 'returns player1 with 1 game won' do
      set.game1.player1.points = 4
      set.game1.player2.points = 0
      set.wins_game1

      expect(set.player1_games_won).to eq (1)
    end 
    it 'returns player 2 with 2 and player1 with 0 games won' do
      set.game1.player1.points = 2
      set.game1.player2.points = 4
      set.wins_game1
      set.game2.player1.points = 4
      set.game2.player2.points = 6
      set.wins_game2


      expect(set.player2_games_won).to eq (2)
      expect(set.player1_games_won).to eq (0)
    end
  end

  describe '#match_score' do
    context 'one player is ahead' do
      it 'returns player1 score then player2 score' do
        set.game1.player1.points = 2
        set.game1.player2.points = 4
        set.wins_game1
        set.game2.player1.points = 8
        set.game2.player2.points = 6
        set.wins_game2
        set.game3.player1.points = 4
        set.game3.player2.points = 6
        set.wins_game3

        expect(set.set_score).to eq ('1 games to 2')
      end
    end

    context 'one player wins 6 to 3' do
      it 'returns winning player wins the set' do
        set.game1.player1.points = 2
        set.game1.player2.points = 4
        set.wins_game1
        set.game2.player1.points = 8
        set.game2.player2.points = 6
        set.wins_game2
        set.game3.player1.points = 4
        set.game3.player2.points = 6
        set.wins_game3
        set.game4.player1.points = 2
        set.game4.player2.points = 4
        set.wins_game4
        set.game5.player1.points = 8
        set.game5.player2.points = 6
        set.wins_game5
        set.game6.player1.points = 4
        set.game6.player2.points = 6
        set.wins_game6
        set.game7.player1.points = 2
        set.game7.player2.points = 4
        set.wins_game7
        set.game8.player1.points = 8
        set.game8.player2.points = 6
        set.wins_game8
        set.game9.player1.points = 4
        set.game9.player2.points = 6
        set.wins_game9

        expect(set.set_score).to eq('Player2 Ted wins the set 6 games to 3')
        expect(set.set_winner).to eq('Player2 Ted')
      end
    end

    context 'one player wins 7 to 6 ' do
      it 'returns winning player wins the set' do
        set.game1.player1.points = 6
        set.game1.player2.points = 4
        set.wins_game1
        set.game2.player1.points = 8
        set.game2.player2.points = 6
        set.wins_game2
        set.game3.player1.points = 4
        set.game3.player2.points = 6
        set.wins_game3
        set.game4.player1.points = 2
        set.game4.player2.points = 4
        set.wins_game4
        set.game5.player1.points = 4
        set.game5.player2.points = 2
        set.wins_game5
        set.game6.player1.points = 4
        set.game6.player2.points = 6
        set.wins_game6
        set.game7.player1.points = 2
        set.game7.player2.points = 4
        set.wins_game7
        set.game8.player1.points = 8
        set.game8.player2.points = 6
        set.wins_game8
        set.game9.player1.points = 4
        set.game9.player2.points = 6
        set.wins_game9
        set.game10.player1.points = 4
        set.game10.player2.points = 2
        set.wins_game10
        set.game11.player1.points = 8
        set.game11.player2.points = 6
        set.wins_game11
        set.game12.player1.points = 4
        set.game12.player2.points = 6
        set.wins_game12
        set.game13.player1.points = 8
        set.game13.player2.points = 6
        set.wins_game13

        expect(set.set_score).to eq('Player1 Bill wins the set 7 games to 6')
      end
    end
  end
end  


describe Tennis::Game do
  let(:game) { Tennis::Game.new }

  describe '.initialize' do
    it 'creates two players' do
      expect(game.player1).to be_a(Tennis::Player)
      expect(game.player2).to be_a(Tennis::Player)
    end

    it 'sets the opponent for each player' do
   
      expect(game.player1.opponent).to eq (game.player2)
      expect(game.player2.opponent).to eq (game.player1)
    end
  end

  describe '#wins_ball' do
    it 'increments the points of the winning player' do
      game.wins_ball(1)

      expect(game.player1.points).to eq(1)
    end
  end

  describe '.score' do
    context 'a player wins to love' do
      it 'returns game: Player1 Bill' do
        game.player1.points = 4
        game.player2.points = 0

        expect(game.game_score).to eq ('game: Player1 Bill')
      end
      it 'returns game: Player2 Ted' do
        game.player1.points = 0
        game.player2.points = 4
      
        expect(game.game_score).to eq ('game: Player2 Ted')
      end
    end
    context 'player1 wins to thirty' do
      it 'returns game: Player1 Bill' do
        game.player1.points = 4
        game.player2.points = 2

        expect(game.game_score).to eq ('game: Player1 Bill')
      end
    end
    context 'player2 wins to fifteen' do
      it 'returns game: Player2 Ted' do
        game.player1.points = 1
        game.player2.points = 4
      
        expect(game.game_score).to eq ('game: Player2 Ted')
      end
    end

    context 'when one player has the advantage' do
      it 'returns advantage Player 1' do
        game.player1.points = 4
        game.player2.points = 3

        expect(game.game_score).to eq ('advantage: Player1 Bill')      
      end
      it 'returns advantage Player 2' do
        game.player1.points = 5
        game.player2.points = 6

        expect(game.game_score).to eq ('advantage: Player2 Ted')      
      end
    end

    context 'when the score is tied at deuce' do
      it 'return deuce' do
        game.player1.points = 4
        game.player2.points = 4

        expect(game.game_score).to eq ('deuce')
      end
    end

    context 'when the score is tied' do
      it 'returns "love all"' do
        game.player1.points = 0
        game.player2.points = 0

        expect(game.game_score).to eq ('love all')
      end
      it 'returns "fifteen all"' do
        game.player1.points = 1
        game.player2.points = 1

        expect(game.game_score).to eq ('fifteen all')
      end
      it 'returns "thirty all"' do
        game.player1.points = 2
        game.player2.points = 2

        expect(game.game_score).to eq ('thirty all')
      end
    end

    context  'when one player is ahead of the other' do
      it 'returns 15 love' do
        game.player1.points = 1
        game.player2.points = 0

        expect(game.game_score).to eq ('fifteen: love')
      end
      it 'returns love fifteen' do
        game.player1.points = 0
        game.player2.points = 1

        expect(game.game_score).to eq ('love: fifteen')
      end
      it 'returns thirty love' do
        game.player1.points = 2
        game.player2.points = 0

        expect(game.game_score).to eq ('thirty: love')
      end
      it 'returns love forty' do
        game.player1.points = 0
        game.player2.points = 3

        expect(game.game_score).to eq ('love: forty')
      end
      it 'returns thirty forty' do
        game.player1.points = 2
        game.player2.points = 3

        expect(game.game_score).to eq ('thirty: forty')
      end
    end
  end
end

describe Tennis::Player do
  let(:player) do
    player = Tennis::Player.new("Player1 Bill")
    player.opponent = Tennis::Player.new("Player2 Ted")

    return player
  end

  describe '.initialize' do
    it 'sets the points to 0' do
      expect(player.points).to eq(0)
    end 
  end

  describe '#record_won_ball!' do
    it 'increments the points' do
      player.record_won_ball!

      expect(player.points).to eq(1)
    end
  end



  describe '#score' do
    context 'when points is 0' do
      it 'returns love' do
        expect(player.score).to eq('love')
      end
    end
    
    context 'when points is 1' do
      it 'returns fifteen' do
        player.points = 1

        expect(player.score).to eq('fifteen')
      end 
    end
    
    context 'when points is 2' do
      it 'returns thirty' do
        player.points = 2

        expect(player.score).to eq ('thirty') 
      end
    end
    
    context 'when points is 3' do
      it 'returns forty' do
        player.points = 3
        player.opponent.points = 1

        expect(player.score).to eq ('forty')
      end
    end

    context 'When the players are tied at deuce' do
      it 'returns deuce' do
        player.points = 3
        player.opponent.points = 3

        expect(player.score).to eq ('deuce')
      end
    end

    context 'When one player has advantage' do
      it 'returns advantage to player1' do
        player.points = 5
        player.opponent.points = 4

        expect(player.score).to eq ('advantage: Player1 Bill')
      end

      it 'returns advantage to player2' do

        player.points = 7
        player.opponent.points = 8

        expect(player.score).to eq ('advantage: Player2 Ted')
      end
    end

    context 'When one player wins the game' do
      it 'returns game: Player1 Bill' do

        player.points = 10
        player.opponent.points = 8

        expect(player.score).to eq ('game: Player1 Bill')

      end

      it 'returns game: Player2 Ted' do

        player.points = 6
        player.opponent.points = 8

        expect(player.score).to eq ('game: Player2 Ted')
      end
    end    
  end
end