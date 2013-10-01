class Ahorcado
	attr_reader :palabra,:aciertos,:intentos,:oportunidades

	def initialize(palabra,oportunidades)
		@palabra=palabra
		@oportunidades=oportunidades
		@intentos=0
		@aciertos=[]
	end

	def adivinar(letra)
		if(@palabra.include? letra )
			@aciertos[@aciertos.length]=letra
		else
			@intentos+=1
		end
	end

	def gano()
		gano=true
		@palabra.chars.each do |letra|
			gano&= @aciertos.include? letra
			if(not gano)
				return false
			end
		end
		true
	end

	def perdio()
		@intentos==@oportunidades
	end

	def obtenerPalabraConAciertos
		palabra=""
		@palabra.chars.each do |letra|
			if(@aciertos.include? letra)
				palabra+=letra
			else
				palabra+="_"
			end
		end
		palabra
	end

	def reiniciar(palabra,oportunidades)
		@palabra=palabra
		@oportunidades=oportunidades
		@intentos=0
		@aciertos=[]
	end

end




