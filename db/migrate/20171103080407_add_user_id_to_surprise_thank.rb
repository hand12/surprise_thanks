class AddUserIdToSurpriseThank < ActiveRecord::Migration[5.1]
	def change
		add_reference :surprise_thanks, :user, index: true
  end
end
