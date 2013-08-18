class SubCategory < ActiveRecord::Base
	belongs_to :category
	has_many :topics
	validates :name , presence: true
	validates_uniqueness_of :name, scope: :category_id
end
