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

  describe 'sum' do

    it 'should return XXXVII when adding XVII and XX' do
      i1 = RomanNumber.new('XX')
      i2 = RomanNumber.new('XVII')
      result = i2.add i1
      result.should eq RomanNumber.new('XXXVII')
    end

  end

  describe 'sum' do

    it 'should return DLXVII when adding CCXXXIV and CCCXXXIII' do
      i1 = RomanNumber.new('CCXXXIV')
      i2 = RomanNumber.new('CCCXXXIII')
      result = i2.add i1
      result.should eq RomanNumber.new('DLXVII')
    end

  end

  describe 'sum' do

    it 'should return DLXVII when adding CDLI and DLXVII' do
      i1 = RomanNumber.new('CDLI')
      i2 = RomanNumber.new('DLXVII')
      result = i2.add i1
      result.should eq RomanNumber.new('MXVIII')
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
