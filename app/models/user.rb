class User < ActiveRecord::Base
	has_many :account_users
end
