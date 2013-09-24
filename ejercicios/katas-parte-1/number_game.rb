class PrintNumbers
	attr_accessor :to
	def initialize(to)
		@to=to
        end
        
	def convertMultiplesOfFiveAndThree
		result=[]
		i = 1
		while i <= @to
		    if(i % 3 == 0 and i % 5 == 0)
		    	result[i-1]='FizzBuzz'
		     elsif i % 3 == 0
			result[i-1]='Fizz'
                     elsif i % 5 == 0
                        result[i-1]='Buzz'
                     else
                  	result[i-1]='None'
                    end
		    i += 1
		end 
                result
	end

	def print
		puts convertMultiplesOfFiveAndThree
        end

end




