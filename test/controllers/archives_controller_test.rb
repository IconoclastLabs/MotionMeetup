require 'test_helper'

class ArchivesControllerTest < ActionController::TestCase

  setup do 
    @some_archive = Archive.first    
  end

  test "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archives)
    assert_not_nil assigns(:future_meetups)
  end
end
