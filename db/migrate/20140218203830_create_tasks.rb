class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :walkthrough_id

      t.timestamps
    end
  end
end
