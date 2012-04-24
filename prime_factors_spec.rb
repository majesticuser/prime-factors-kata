require File.dirname(__FILE__) + '/prime_factors'

describe "PrimeFactors#get" do

  it 'returns [] for 0 ' do
    PrimeFactors.get(0).should eq([])
  end

  it 'returns [] for 1' do
    PrimeFactors.get(1).should eq([])
  end

  it 'returns [2] for 2' do
    PrimeFactors.get(2).should eq([2])
  end

  it 'returns [3] for 3' do
    PrimeFactors.get(3).should eq([3])
  end

  it 'returns [2, 2] for 4' do
    PrimeFactors.get(4).should eq([2, 2])
  end

  #it 'returns [5] for 5' do
  #  PrimeFactors.get(5).should eq([5])
  #end

  it 'returns [2, 3] for 6' do
    PrimeFactors.get(6).should eq([2, 3])
  end

  #it 'returns [7] for 7' do
  #  PrimeFactors.get(7).should eq([7])
  #end

  it 'returns [2, 2, 2] for 8' do
    PrimeFactors.get(8).should eq([2, 2, 2])
  end

  it 'returns [3, 3] for 9' do
    PrimeFactors.get(9).should eq([3, 3])
  end

  #it 'example' do
  #  puts PrimeFactors.get(827289).inspect
  #end

end