require 'rspec'
require_relative './permutation'

describe Permutation do

  describe 'initialize' do

	it 'should set value' do
           permutation=Permutation.new('ABC')
           permutation.value.should eq 'ABC'
        end
    end

    describe 'amount of permutations ' do

	it 'should be 6 the amount of permutations of ABC ' do
           permutation=Permutation.new('ABC')
           permutations=permutation.getPermutations()
	   permutations.length.should eq 6
        end

	it 'should be 24 the amount of permutations of ABCD ' do
           permutation=Permutation.new('ABCD')
           permutations=permutation.getPermutations()
	   permutations.length.should eq 24
        end

    end

    describe 'permutations' do

	it 'should be ABC,ACB,BAC,BCA,CAB,CBA the permutations of ABC' do

           permutation=Permutation.new('ABC')
	   resultPermutations=permutation.getPermutations
           resultPermutations.should eq ['ABC','ACB','BAC','BCA','CAB','CBA']

        end
    end


end
