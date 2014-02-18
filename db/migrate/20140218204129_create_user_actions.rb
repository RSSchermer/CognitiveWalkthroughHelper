class CreateUserActions < ActiveRecord::Migration
  def change
    create_table :user_actions do |t|
      t.integer :task_id
      t.string :description
      t.string :system_response_description
      t.boolean :question_one_is_true
      t.string :question_one_explanation
      t.boolean :question_two_is_true
      t.string :question_two_explanation
      t.boolean :question_three_is_true
      t.string :question_three_explanation
      t.boolean :question_four_is_true
      t.string :question_four_explanation
      t.string :additional_explanation

      t.timestamps
    end
  end
end
