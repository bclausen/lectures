class CreateUsersTable < ActiveRecord::Migration
	def self.change
		
		create_table(users) do |t|
			t.string :nickname
		end

	end
end
