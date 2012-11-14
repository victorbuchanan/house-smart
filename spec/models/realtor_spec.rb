require 'spec_helper'

describe Realtor do
  context "associations" do
    it "should extend Professional" do  #polymorphism
      Realtor.new.should respond_to(:professional)
    end
  end
end

