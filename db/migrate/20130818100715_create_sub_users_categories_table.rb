class CreateSubUsersCategoriesTable < ActiveRecord::Migration
  def change
    create_table :categories_sub_users, :id => false do |t|
    	t.references :sub_user
        t.references :category
    end
  end
end
