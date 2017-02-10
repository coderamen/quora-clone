class CreateAnswers < ActiveRecord::Migration
	def answers
		create_table :answers do |t|
			t.integer :user_id
			t.integer :question_id
			t.string :text

			t.timestamp
		end
	end
end
