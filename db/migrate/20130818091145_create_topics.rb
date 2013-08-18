class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
    	t.references :sub_category, null: false
    	t.string :name, null: false
    	t.string :description
    	t.string :url
    end
  end
end
