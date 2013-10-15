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
		inicial=1000
		cadena = ""
		valores=[9,5,4]
		values={1 =>'I' ,4 =>'IV' ,5 =>'V' ,9 =>'IX' ,10 =>'X' ,40 =>'XL' ,
			50 =>'L' , 90 => 'XC' ,100 => 'C' ,400 => 'CD' , 500 => 'D' ,
			900 => 'DM' ,1000=>'M'}
		while n != 0
			while n>=inicial
				cadena+=values[inicial]
				n-=inicial
			end
			inicial/=10

			if inicial !=0
				for i in (0..valores.length-1)
					if n >= valores[i] * inicial
						cadena+= values[valores[i]*inicial ]
						n-=valores[i]*inicial
					end
				end
			end
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



