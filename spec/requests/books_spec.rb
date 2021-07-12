require 'rails_helper'

RSpec.describe "Books", type: :request do
  describe "index" do
    it "" do
      
    end
    
    get :index
    assert_response :success
  end
end
