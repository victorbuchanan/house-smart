class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest

    validates_presence_of :name, :email

end
