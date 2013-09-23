class Permutation

	def initialize(value)
		@value=value
	end

	def getPermutations()
		word = @value;
		permutations=[]
		i=0
		pword = word.chars.to_a.permutation.to_a
		pword.each do |p|
		   permutations[i]=p.join
		   i+=1
		end 
		permutations
	end	

end

p=Permutation.new('ABCD')
puts p.getPermutations.length




