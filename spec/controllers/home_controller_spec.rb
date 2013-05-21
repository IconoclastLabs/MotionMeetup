require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should_be :success

    end
    it "fails" do

      1 = 2
    end
  end

end
