class OperationItem < ActiveRecord::Base
	belongs_to :operation
	belongs_to :article
	belongs_to :budget_category

	def amount_with_format
		if amount_type == true
		"$" + amount.to_s
		else
		"($" + amount.to_s + ")"
		end
	end


end
