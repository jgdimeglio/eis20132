require 'rspec'
require_relative './tenis'

describe TennisGame do

  describe 'initialize' do

	it 'should set value' do
           tennisGame=TennisGame.new('player1','player2')
           tennisGame.playerOne.name.should eq 'player1'
	   tennisGame.playerTwo.name.should eq 'player2'
        end

	it 'should set default value to amountMatch and winners' do
           tennisGame=TennisGame.new('player1','player2')
           tennisGame.amountMatch.should eq 0
	   tennisGame.winners.length.should eq 0
        end
    end

    describe 'score of player ' do

        tennisGame=TennisGame.new('player1','player2')
	
	it 'should be Fifteen the score of playerOne ' do
   
	   tennisGame.addPointPlayerOne()
	   tennisGame.scorePlayerOne().should eq 'Fifteen'
        end

	it 'should be Fifteen the score of playerOne ' do
         
	   tennisGame.addPointPlayerOne()
	   tennisGame.scorePlayerOne().should eq 'Thirty'
        end

	it 'should be Forty the score of playerOne ' do
         
	   tennisGame.addPointPlayerOne()
	   tennisGame.scorePlayerOne().should eq 'Forty'
        end

	it 'should be Forty the score of playerOne after being in advantage' do
	   tennisGame.addPointPlayerTwo()
	   tennisGame.addPointPlayerTwo() 
           tennisGame.addPointPlayerTwo() 
=begin
           PlayerOne in advantage
=end
	   tennisGame.addPointPlayerOne()
=begin
           in deuce
=end
           tennisGame.addPointPlayerTwo() 
	   tennisGame.scorePlayerOne().should eq 'Forty'
        end
	

    end

    describe 'winner' do

	it 'should set winner to player2' do
           tennisGame=TennisGame.new('player1','player2')
           tennisGame.addPointPlayerTwo()
 	   tennisGame.addPointPlayerTwo()
           tennisGame.addPointPlayerTwo()
           tennisGame.addPointPlayerTwo()
	   tennisGame.winners[0].name.should eq 'player2'
	   tennisGame.winners.length.should eq 1
        end

	it 'should set winner to player2 and player1' do
           tennisGame=TennisGame.new('player1','player2')
	   for i in 1..4
           tennisGame.addPointPlayerTwo()
           end

	   for i in 1..4
           tennisGame.addPointPlayerOne()
           end

	   tennisGame.winners[0].name.should eq 'player2'
	   tennisGame.winners[1].name.should eq 'player1'
	   tennisGame.winners.length.should eq 2
        end
    end

   describe 'deuce' do
	
	it 'should be true ' do
           tennisGame=TennisGame.new('player1','player2')
           tennisGame.addPointPlayerTwo()
 	   tennisGame.addPointPlayerTwo()
           tennisGame.addPointPlayerTwo()
           tennisGame.addPointPlayerOne()
	   tennisGame.addPointPlayerOne()
	   tennisGame.addPointPlayerOne()
	   tennisGame.isDeuce.should eq true
        end

	it 'should be false ' do
           tennisGame=TennisGame.new('player1','player2')
           tennisGame.addPointPlayerTwo()
	   tennisGame.addPointPlayerTwo()
	   tennisGame.addPointPlayerTwo()
	   tennisGame.addPointPlayerOne()
	   tennisGame.addPointPlayerOne()
	   tennisGame.addPointPlayerOne()
=begin
           PlayerTwo in advantage
=end
	   tennisGame.addPointPlayerTwo()
	   tennisGame.isDeuce.should eq false
        end
    end

    describe 'amount match' do
	
	it 'should be 2 of amount match ' do
           tennisGame=TennisGame.new('player1','player2')
           for i in 1..4
               tennisGame.addPointPlayerTwo()
           end
           for i in 1..4
               tennisGame.addPointPlayerOne()
           end
	   tennisGame.amountMatch.should eq 2
        end
    end

end


