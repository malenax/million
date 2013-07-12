require 'spec_helper'

describe Million::Pi do
  let(:pi){ Million::Pi.new }

  describe "value" do
    shared_examples "a valid pi digit" do |digits, inverse=false|

        digits.size.times.each do |index|
          index = -1 * (index+1) if inverse
          it "#{index} should be correct" do
            pi[index].should eq(digits[index])
          end
        end

    end

    context "first digits valid" do
      it_should_behave_like "a valid pi digit", %q(1415926535)
    end

    context "last digits valid" do
      it_should_behave_like "a valid pi digit", %q(5779458151), true
    end

    it "should have a length of 1 million of digits" do
      pi.value.size.should eq(1000000)
    end

  end

end