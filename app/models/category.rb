class Category < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3, maximum: 26}
	validates_uniqueness_of :name
end