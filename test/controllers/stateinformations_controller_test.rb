require "test_helper"

class StateinformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stateinformation = stateinformations(:one)
  end

  test "should get index" do
    get stateinformations_url
    assert_response :success
  end

  test "should get new" do
    get new_stateinformation_url
    assert_response :success
  end

  test "should create stateinformation" do
    assert_difference('Stateinformation.count') do
      post stateinformations_url, params: { stateinformation: { asesinatos: @stateinformation.asesinatos, maltrato_infantil: @stateinformation.maltrato_infantil, robos: @stateinformation.robos, state: @stateinformation.state, violaciones: @stateinformation.violaciones } }
    end

    assert_redirected_to stateinformation_url(Stateinformation.last)
  end

  test "should show stateinformation" do
    get stateinformation_url(@stateinformation)
    assert_response :success
  end

  test "should get edit" do
    get edit_stateinformation_url(@stateinformation)
    assert_response :success
  end

  test "should update stateinformation" do
    patch stateinformation_url(@stateinformation), params: { stateinformation: { asesinatos: @stateinformation.asesinatos, maltrato_infantil: @stateinformation.maltrato_infantil, robos: @stateinformation.robos, state: @stateinformation.state, violaciones: @stateinformation.violaciones } }
    assert_redirected_to stateinformation_url(@stateinformation)
  end

  test "should destroy stateinformation" do
    assert_difference('Stateinformation.count', -1) do
      delete stateinformation_url(@stateinformation)
    end

    assert_redirected_to stateinformations_url
  end
end
