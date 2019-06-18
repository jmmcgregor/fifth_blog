require 'test_helper'

class PzDiscoverControllerTest < ActionDispatch::IntegrationTest
  test "should get sampler_name" do
    get pz_discover_sampler_name_url
    assert_response :success
  end

  test "should get sampler_form" do
    get pz_discover_sampler_form_url
    assert_response :success
  end

end
