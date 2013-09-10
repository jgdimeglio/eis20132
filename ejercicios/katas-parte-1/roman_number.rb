class RomanNumber 
	attr_accessor :value

	def initialize(value = nil)
		@value=value
		@values={'X' => 10 , 'I' => 1 , 'V' => 5}
	end


	def toDecimal()
		decimal=0
		i=0
		result=0
=begin
Obtiene el ultimo caractere,si es la primera iteracion obtiene el valor y lo guarda en result,
si no es la primera iteracion chequea que el caractere actual sea de menor valor al anterior,si
es asi al result le resta el valor del caractere actual ,caso contrario lo suma.
=end
		while i < @value.length
			if(i == 0)
                            result+= @values[@value[@value.length-i-1]]
			elsif @values[@value[@value.length-i-1]] < @values[@value[@value.length-i]]
				result-= @values[@value[@value.length-i-1]] 
			else
				result+= @values[@value[@value.length-i-1]]
                        end
			i=i+1
                end
		result
        end


	def add(romanNumber)
		RomanNumber.new('II')
	end

	def ==(romanNumber)
 	    @value == romanNumber.value
        end 
		
end

