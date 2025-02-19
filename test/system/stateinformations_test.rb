require "application_system_test_case"

class StateinformationsTest < ApplicationSystemTestCase
  setup do
    @stateinformation = stateinformations(:one)
  end

  test "visiting the index" do
    visit stateinformations_url
    assert_selector "h1", text: "Stateinformations"
  end

  test "creating a Stateinformation" do
    visit stateinformations_url
    click_on "New Stateinformation"

    fill_in "Asesinatos", with: @stateinformation.asesinatos
    fill_in "Maltrato infantil", with: @stateinformation.maltrato_infantil
    fill_in "Robos", with: @stateinformation.robos
    fill_in "State", with: @stateinformation.state
    fill_in "Violaciones", with: @stateinformation.violaciones
    click_on "Create Stateinformation"

    assert_text "Stateinformation was successfully created"
    click_on "Back"
  end

  test "updating a Stateinformation" do
    visit stateinformations_url
    click_on "Edit", match: :first

    fill_in "Asesinatos", with: @stateinformation.asesinatos
    fill_in "Maltrato infantil", with: @stateinformation.maltrato_infantil
    fill_in "Robos", with: @stateinformation.robos
    fill_in "State", with: @stateinformation.state
    fill_in "Violaciones", with: @stateinformation.violaciones
    click_on "Update Stateinformation"

    assert_text "Stateinformation was successfully updated"
    click_on "Back"
  end

  test "destroying a Stateinformation" do
    visit stateinformations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stateinformation was successfully destroyed"
  end
end
