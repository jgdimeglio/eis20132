require 'rspec'
require_relative 'juego.rb'

describe Ahorcado do

	describe "modelo del juego" do
		subject{@ahorcado=Ahorcado.new("perro",1)}

		it { should respond_to( :adivinar) }
		it { should respond_to( :gano) }
		it { should respond_to( :perdio) }
		it { should respond_to( :obtenerPalabraConAciertos) }
		it { should respond_to( :reiniciar) }
=begin
get
=end
		it { should respond_to( :aciertos) }
		it { should respond_to( :oportunidades) }
		it { should respond_to( :palabra) }
		it { should respond_to( :intentos) }

	end

	before (:each) { @ahorcado=Ahorcado.new("casa",2) }

	describe "initialize" do

		it "deberia settear palabra y 4  al inicializar" do
			ahorcado=Ahorcado.new("palabra",4)
			ahorcado.palabra.should eq "palabra"
			ahorcado.oportunidades.should eq 4
		end
	end

	describe "adivinar" do

		it "deberia adivinar la letra a de la palabra casa" do

			@ahorcado.adivinar("a")
			@ahorcado.aciertos[0].should eq "a"
		end

		it "deberia no adivinar al intentar con la letra n" do

			@ahorcado.adivinar("n")
			@ahorcado.aciertos.length.should eq 0
		end

		it "deberia solo adivinar dos letras (la c y s)" do

			@ahorcado.adivinar("c")
			@ahorcado.adivinar("s")
			@ahorcado.adivinar("t")
			@ahorcado.aciertos.length.should eq 2
			@ahorcado.aciertos[0].should eq "c"
			@ahorcado.aciertos[1].should eq "s"
		end

		it "deberia tener un intento mas al intentar con la letra d" do

			@ahorcado.adivinar("d")
			@ahorcado.intentos.should eq 1
		end

	end

	describe "ganar" do
		it "deberia ganar al intentar con las letras a , g , c y s sobre la palabra casa" do
			@ahorcado.adivinar("a")
			@ahorcado.adivinar("g")
			@ahorcado.adivinar("c")
			@ahorcado.adivinar("s")
			@ahorcado.gano.should eq true
		end

		it "no deberia ganar al intentar con las letras a , g y c  sobre la palabra casa" do
			@ahorcado.adivinar("a")
			@ahorcado.adivinar("g")
			@ahorcado.adivinar("c")
			@ahorcado.gano.should eq false
		end
	end

	describe "perder" do
		it "deberia perder al intentar con las letras n y j sobre la palabra casa" do
			@ahorcado.adivinar("n")
			@ahorcado.adivinar("j")
			@ahorcado.perdio.should eq true
		end

		it "no deberia perder al intentar con las letras f ,a y c sobre la palabra casa" do
			@ahorcado.adivinar("f")
			@ahorcado.adivinar("a")
			@ahorcado.adivinar("c")
			@ahorcado.perdio.should eq false
		end

		
	end

	describe "reiniciar" do
		it "deberia establecer la palabra perro , las oportunidades 1 al reiniciar" do
			@ahorcado.reiniciar("perro",1)
			@ahorcado.palabra.should eq "perro"
			@ahorcado.oportunidades.should eq 1
		end

		it "deberia establecer la cantidad de aciertos en 0 y los intentos en 0 al reiniciar" do
			@ahorcado.adivinar("a")
			@ahorcado.adivinar("n")
			@ahorcado.reiniciar("arbol",2)
			@ahorcado.aciertos.length.should eq 0
			@ahorcado.intentos.should eq 0
		end

		
	end

	describe "obtener la palabra con aciertos" do

		it "deberia obtener la palabra c___ al adivinar solamente la letra c" do
			@ahorcado.adivinar("c")
			@ahorcado.adivinar("n")

			@ahorcado.obtenerPalabraConAciertos.should eq "c___"
		end

		it "deberia obtener la palabra ca_a al adivinar solamente la letra c y a" do
			@ahorcado.adivinar("c")
			@ahorcado.adivinar("a")

			@ahorcado.obtenerPalabraConAciertos.should eq "ca_a"
		end

		it "deberia obtener la palabra casa al adivinar solamente la letra c , s y a" do
			@ahorcado.adivinar("c")
			@ahorcado.adivinar("a")
			@ahorcado.adivinar("s")
			@ahorcado.obtenerPalabraConAciertos.should eq "casa"
		end

		it "deberia obtener la palabra ____ al no adivinar ninguna letra" do
			@ahorcado.adivinar("k")
			@ahorcado.adivinar("q")
			@ahorcado.obtenerPalabraConAciertos.should eq "____"
		end

	end


end
