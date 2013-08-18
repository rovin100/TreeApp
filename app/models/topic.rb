class Topic < ActiveRecord::Base
	belongs_to :sub_category
	validates :name , presence: true
	validates_presence_of :sub_category
	validates_uniqueness_of :name, scope: :sub_category_id
end
