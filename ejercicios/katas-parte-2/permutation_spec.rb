require 'rspec'
require_relative './permutation'

describe Permutation do

  describe 'initialize' do

	it 'should set value' do
           permutation=Permutation.new('ABC')
           permutation.to.should eq 'ABC'
        end
    end

    describe 'amount of permutations ' do

	it 'should be 6 the amount of permutations of ABC ' do
           permutation=Permutation.new('ABC')
           permutations=permutation.getPermutations()
	   permutations.length.should eq 6
        end

	it 'should be 24 the amount of permutations of ABC ' do
           permutation=Permutation.new('ABCD')
           permutations=permutation.getPermutations()
	   permutations.length.should eq 24
        end

    end


end
