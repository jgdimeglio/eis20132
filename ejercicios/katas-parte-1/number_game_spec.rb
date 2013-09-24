require 'rspec'
require_relative './number_game.rb'

describe PrintNumbers do

  describe 'initialize' do

	it 'should set value' do
           printNumbers=PrintNumbers.new(100)
           printNumbers.to.should eq 100
        end
    end

    describe 'amount of converted numbers ' do

	it 'should be 100 the amount of converted numbers ' do
           printNumbers=PrintNumbers.new(100)
           result=printNumbers.convertMultiplesOfFiveAndThree
	   result.length.should eq 100
        end

    end

  describe 'convert multiples' do

    it 'should have converted all the multiples of three and five' do
	printNumbers=PrintNumbers.new(100)
	result=printNumbers.convertMultiplesOfFiveAndThree
	number=1
	for element in result
		
	   if number % 3 == 0 and number % 5 == 0
	      element.should eq 'FizzBuzz'
	   elsif number % 5 == 0
	      element.should eq 'Buzz'
           elsif number % 3 == 0 
              element.should eq 'Fizz'
           else
              element.should eq 'None'
           end
                     
           number=number+1
        end
        
    end


  end

end
