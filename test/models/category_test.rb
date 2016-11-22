require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

	def setup
		@category = Category.new(name: "sports")
	end

	test "category should be valid" do
		assert @category.valid?
	end

	test "category name should be present" do
		@category.name = " "
		assert_not @category.valid?
	end

	test "category name should be unique" do
		@category.save
		@category_new = Category.new(name: "sports")

		assert_not @category_new.valid?
	end

	test "category name should not be too long" do
		@category.name = "a" * 27
		assert_not @category.valid?
	end

	test "category name should not be too short" do
		@category.name = "a" * 2
		assert_not @category.valid?
	end
end