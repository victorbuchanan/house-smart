require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"

  context "Validations" do


    [:name, :email].each do |attr|
      it "#{attr} cannot be nil or blank" do
        attr = attr.to_sym
        anonymous = FactoryGirl.build(:user, attr => "")
        anonymous.should_not be_valid
        anonymous.errors.get(attr).should_not be_nil
        anonymous[attr] = "Luigi"
        anonymous.should be_valid

      end
    end












  end
end
