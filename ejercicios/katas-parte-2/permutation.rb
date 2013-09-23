class Permutation
	attr_accessor :value
	def initialize(value)
		@value=value
	end

	def getPermutations()
		permutations=[]
		i=0
		chars = @value.chars.to_a.permutation.to_a
		chars.each do |p|
		   permutations[i]=p.join
		   i+=1
		end 
		permutations
	end	

end






