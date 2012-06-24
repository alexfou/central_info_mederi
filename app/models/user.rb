class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :user_type
  has_secure_password
end
