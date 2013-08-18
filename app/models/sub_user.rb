class SubUser < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :categories
	validates :name, presence: true
	validates_uniqueness_of :name, scope: :user_id
end
