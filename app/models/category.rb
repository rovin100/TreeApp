class Category < ActiveRecord::Base
	has_and_belongs_to_many :sub_users
	validates :name , presence: true, uniqueness: true
	has_many :sub_categories
end
