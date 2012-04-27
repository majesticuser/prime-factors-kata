require File.dirname(__FILE__) + '/prime_factors'

describe "PrimeFactors#get" do

  it {0.should factor_into([])}

  it {1.should factor_into([])}

  it {2.should factor_into([2])}

  it {3.should factor_into([3])}

  it {4.should factor_into([2,2])}

  it {5.should factor_into([5])}

  it {6.should factor_into([2, 3])}

  it {7.should factor_into([7])}

  it {8.should factor_into([2,2,2])}

  it {9.should factor_into([3,3])}

  it {16.should factor_into([2,2,2,2])}


  RSpec::Matchers.define :factor_into do |expected|
    match do |actual|
      PrimeFactors.get(actual) == expected
    end

    failure_message_for_should do |actual|
      "expected #{actual} to factor into #{expected} but was #{PrimeFactors.get(actual)}"
    end
  end

end