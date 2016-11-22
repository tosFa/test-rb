require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest

	def setup
		@c1 = Category.create(name: "sports")
		@c2 = Category.create(name: "development")
	end
	test "Should show category listing" do
		get categories_path
		assert_template 'categories/index'

		assert_select "a[href=?]", category_path(@c1), text: @c1.name
		assert_select "a[href=?]", category_path(@c2), text: @c2.name
	end
end