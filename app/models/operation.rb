class Operation < ActiveRecord::Base
	has_many :operation_items
	belongs_to :operation_type
	belongs_to :store
	belongs_to :account
end
