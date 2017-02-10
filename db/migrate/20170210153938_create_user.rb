class CreateUser < ActiveRecord::Migration
	def user
		create_table :users do |t|
			t.string :email
			t.string :password_digest

			t.timestamp
		end
	end
end
