require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  def setup
  	@category = Category.create(name: "Sports")

  end

  test "should get categories index" do
  	get :index 									#get is a http request
	assert_response :success					#ensures get index and response we get is success
  end
  test "should get new" do
  	get :new
	assert_response :success
  end
  test "should get show" do
  	get(:show, {'id'=> @category.id})
  	assert_response :success
  end
  
end