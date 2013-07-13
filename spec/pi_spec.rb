require 'spec_helper'
require 'nokogiri'
require 'open-uri'

describe Million::Pi do
  let(:pi){ Million::Pi.new }

  describe "url" do
    it "shoud be alive and kicking" do
      doc = Nokogiri::HTML(open( Million::Pi.url))
      doc.should_not be_nil
    end
  end

  describe "value" do
    shared_examples "a valid pi digit" do |digits_to_match|
      it "#{digits_to_match} should match" do
        pi.value.should match(digits_to_match)
      end
    end

    context "first digits valid" do
      it_should_behave_like "a valid pi digit", /^1415926535/
    end

    context "last digits valid" do
      it_should_behave_like "a valid pi digit", /5779458151$/
    end

    it "should have a length of 1 million of digits" do
      pi.value.size.should eq(1000000)
    end

  end

  describe "find" do
    context "is success" do
      it "should return the index of value" do
        pi.find("8405").should eq(996613)
      end
    end

    context "is fail" do
      it "sould be nil" do
        pi.find("ABC").should be_nil
      end
    end
  end

end