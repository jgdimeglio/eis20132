require 'rspec'
require_relative './roman_number'

describe RomanNumber do

  describe 'initialize' do

    it 'should set value' do
      rn = RomanNumber.new('I')
      rn.value.should eq 'I'
    end

  end

  describe 'sum' do

    it 'should return II when adding I and I' do
      i = RomanNumber.new('I')
      result = i.add i
      result.should eq RomanNumber.new('II')
    end

  end

  describe 'to decimal' do

    it 'should return 24 when i convert XXIV' do
      i = RomanNumber.new('XXIV')
      result = i.toDecimal
      result.should eq 24
    end
  end

  describe 'to decimal' do

    it 'should return 12 when i convert XII' do
      i = RomanNumber.new('XII')
      result = i.toDecimal
      result.should eq 12
    end

  end
    
end
