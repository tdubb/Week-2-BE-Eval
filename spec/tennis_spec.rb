require 'pry'
require 'rubygems'
require 'bundler/setup'
require 'rspec'


require_relative '../tennis'

describe Tennis::Match do
  let(:match) { Tennis::Match.new}

  describe '.initialize' do
    it 'creates 13 games' do
      expect(match.game1).to be_a(Tennis::Game)
      expect(match.game2).to be_a(Tennis::Game)
      expect(match.game3).to be_a(Tennis::Game)
      expect(match.game4).to be_a(Tennis::Game)
      expect(match.game5).to be_a(Tennis::Game)
      expect(match.game6).to be_a(Tennis::Game)
      expect(match.game7).to be_a(Tennis::Game)
      expect(match.game8).to be_a(Tennis::Game)
      expect(match.game9).to be_a(Tennis::Game)
      expect(match.game10).to be_a(Tennis::Game)
      expect(match.game11).to be_a(Tennis::Game)
      expect(match.game12).to be_a(Tennis::Game)
      expect(match.game13).to be_a(Tennis::Game)
    end
  end

  describe '#wins_game1' do
    it 'returns the winner of the game' do
      match.game1.player1.points = 4
      match.game1.player2.points = 0

      expect(match.wins_game1).to eq ('game: Player1 Bill') 
    end
    it 'returns game not over' do
      match.game1.player1.points = 2
      match.game1.player2.points = 3

      expect(match.wins_game1).to eq ('game not over') 
    end
  end

  describe '#playerx_game_won' do
    it 'returns player1 with 1 game won' do
      match.game1.player1.points = 4
      match.game1.player2.points = 0
      match.wins_game1

      expect(match.player1_games_won).to eq (1)
    end 
    it 'returns player 2 with 2 and player1 with 0 games won' do
      match.game1.player1.points = 2
      match.game1.player2.points = 4
      match.wins_game1
      match.game2.player1.points = 4
      match.game2.player2.points = 6
      match.wins_game2


      expect(match.player2_games_won).to eq (2)
      expect(match.player1_games_won).to eq (0)
    end
  end

  describe '#match_score' do
    context 'one player is ahead' do
      it 'returns player1 score then player2 score' do
        match.game1.player1.points = 2
        match.game1.player2.points = 4
        match.wins_game1
        match.game2.player1.points = 8
        match.game2.player2.points = 6
        match.wins_game2
        match.game3.player1.points = 4
        match.game3.player2.points = 6
        match.wins_game3

        expect(match.match_score).to eq ('1 games to 2')
      end
    end

    context 'one player wins 6 to 3' do
      it 'returns winning player wins the match' do
        match.game1.player1.points = 2
        match.game1.player2.points = 4
        match.wins_game1
        match.game2.player1.points = 8
        match.game2.player2.points = 6
        match.wins_game2
        match.game3.player1.points = 4
        match.game3.player2.points = 6
        match.wins_game3
        match.game4.player1.points = 2
        match.game4.player2.points = 4
        match.wins_game4
        match.game5.player1.points = 8
        match.game5.player2.points = 6
        match.wins_game5
        match.game6.player1.points = 4
        match.game6.player2.points = 6
        match.wins_game6
        match.game7.player1.points = 2
        match.game7.player2.points = 4
        match.wins_game7
        match.game8.player1.points = 8
        match.game8.player2.points = 6
        match.wins_game8
        match.game9.player1.points = 4
        match.game9.player2.points = 6
        match.wins_game9

        expect(match.match_score).to eq('Player2 Ted wins the match 6 games to 3')
      end
    end

    context 'one player wins 7 to 6 ' do
      it 'returns winning player wins the match' do
        match.game1.player1.points = 6
        match.game1.player2.points = 4
        match.wins_game1
        match.game2.player1.points = 8
        match.game2.player2.points = 6
        match.wins_game2
        match.game3.player1.points = 4
        match.game3.player2.points = 6
        match.wins_game3
        match.game4.player1.points = 2
        match.game4.player2.points = 4
        match.wins_game4
        match.game5.player1.points = 4
        match.game5.player2.points = 2
        match.wins_game5
        match.game6.player1.points = 4
        match.game6.player2.points = 6
        match.wins_game6
        match.game7.player1.points = 2
        match.game7.player2.points = 4
        match.wins_game7
        match.game8.player1.points = 8
        match.game8.player2.points = 6
        match.wins_game8
        match.game9.player1.points = 4
        match.game9.player2.points = 6
        match.wins_game9
        match.game10.player1.points = 4
        match.game10.player2.points = 2
        match.wins_game10
        match.game11.player1.points = 8
        match.game11.player2.points = 6
        match.wins_game11
        match.game12.player1.points = 4
        match.game12.player2.points = 6
        match.wins_game12
        match.game13.player1.points = 8
        match.game13.player2.points = 6
        match.wins_game13

        expect(match.match_score).to eq('Player1 Bill wins the match 7 games to 6')
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