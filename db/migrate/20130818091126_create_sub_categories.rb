class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
    	t.references :category, null: false
    	t.string :name, null: false
    end
  end
end
