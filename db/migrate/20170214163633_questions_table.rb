class QuestionsTable < ActiveRecord::Migration
	def change
		create_table :questions do |t|
			t.integer :user_id
			t.string :text
			t.string :category

			t.timestamps
		end
	end
end
