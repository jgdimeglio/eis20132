class RomanNumber 
	attr_accessor :value

	def initialize(value = nil)
		@value=value
		@values={'X' => 10 , 'I' => 1 , 'V' => 5 ,'L' => 50 , 'C' => 100 ,'D' => 500 , 'M'=>1000}
	end

	def  toRomanNumber(n)
=begin
Dado un entero lo convierte en numero romano
=end
		    cadena = ""
		    while n>=1000
			cadena+="M"
			n-=1000
		    end
		    if n>=900
			cadena+="DM"
			n-=900
		    end
		    if n>=500
			cadena+="D"
			n-=500
		    end
		    if n>=400
			cadena+="CD"
			n-=400
		    end
		    while n>=100
			cadena+="C"
			n-=100
		    end
		    if n>=90
			cadena+="XC"
			n-=90
		    end
		    if n>=50
			cadena+="L"
			n-=50
		    end
		    if n>=40
			cadena+="XL"
			n-=40
		    end
		    while n>=10
			cadena+="X"
			n-=10
		    end
		    if n>=9
			cadena+="IX"
			n-=9
		    end
		    if n>=5
			cadena+="V"
			n-=5
		    end
		    if n>=4
			cadena+="IV"
			n-=4
		    end
		    while n>=1
        	        cadena+="I";
                        n-=1;
                    end
		cadena
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
=begin
Suma dos numeros romanos,primero los convierto a decimal,luego los sumo ,el resultado
lo convierto a numero romano y retorno un nuevo RomanNumber
=end
		result=toRomanNumber(toDecimal + romanNumber.toDecimal)
                RomanNumber.new(result)
	end

	def ==(romanNumber)
 	    @value == romanNumber.value
        end 
		
end



