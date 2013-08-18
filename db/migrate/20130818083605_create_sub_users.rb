class CreateSubUsers < ActiveRecord::Migration
  def change
    create_table :sub_users do |t|
    	t.references :user
    	t.string :name, null: false
      t.timestamps
    end
  end
end
