require 'pry'
require 'rubygems'
require 'bundler/setup'
require 'rspec'


require_relative '../tennis'

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