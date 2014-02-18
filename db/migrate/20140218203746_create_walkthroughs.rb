class CreateWalkthroughs < ActiveRecord::Migration
  def change
    create_table :walkthroughs do |t|
      t.string :description

      t.timestamps
    end
  end
end
