class TennisGame
	attr_accessor :playerOne
	attr_accessor :playerTwo
	attr_accessor :winners
	attr_accessor :amountMatch
	def initialize(namePlayerOne,namePlayerTwo)
		@amountMatch=0
		@playerOne=Player.new(namePlayerOne)
		@playerTwo=Player.new(namePlayerTwo)
		@winners=[]
		@score={3 => 'Forty', 2 => 'Thirty',1 => 'Fifteen',0 => 'Love'}
	end

	def isDeuce()
		@playerOne.isDeuce(playerTwo)
	end

	def addPointPlayerOne()
		@playerOne.addPoint(@playerTwo,self)
	end

	def addPointPlayerTwo()
		@playerTwo.addPoint(@playerOne,self)
	end

	def scorePlayerOne()
		@score[playerOne.points]
	end

	def scorePlayerTwo()
		@score[playerTwo.points]
	end

	def addWinner(player)
=begin
           Me guardo al ganador y reinicio los puntajes de los players.
=end
		@winners[@amountMatch]=player
		@amountMatch+=1
		@playerOne.reset()
		@playerTwo.reset()
		
	end


	def printsWinners()
		@winners.each do |player|
			puts 'Winner '+ player.name
		end
	end
end




class Player
	attr_accessor :points 
	attr_accessor :name
	def initialize(name)
		@points=0
		@name=name
	end

	
	def isDeuce(otherPlayer)
		@points == 3 && @points == otherPlayer.points
	end

	def addPoint(otherPlayer,tennisGame)
=begin
           Si estoy 40 a (X < 40) o tengo ventaja,ya gané.
=end
		if@points == 3 && otherPlayer.points < 3 || @points == 4 && otherPlayer.points == 3 		
			tennisGame.addWinner(self)
			return
		end
=begin
           Si mi oponente tiene ventaja,quedamos iguales.
=end
		if(otherPlayer.points == 4 && @points == 3)
			otherPlayer.subPoint()
			return
		end
		@points+=1
	end

	def subPoint()
		@points-=1
	end

	def reset()
		@points=0
	end

end



