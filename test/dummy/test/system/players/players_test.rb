require "application_system_test_case"

class Players::PlayersTest < ApplicationSystemTestCase
  setup do
    @players_player = players_players(:one)
  end

  test "visiting the index" do
    visit players_players_url
    assert_selector "h1", text: "Players/Players"
  end

  test "creating a Player" do
    visit players_players_url
    click_on "New Players/Player"

    fill_in "Name", with: @players_player.name
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "updating a Player" do
    visit players_players_url
    click_on "Edit", match: :first

    fill_in "Name", with: @players_player.name
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "destroying a Player" do
    visit players_players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player was successfully destroyed"
  end
end