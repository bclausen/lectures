class CreateUsersTable < ActiveRecord::Migration
	def change
		
		create_table(:users) do |t|
			t.string :nickname
		end

	end
end
