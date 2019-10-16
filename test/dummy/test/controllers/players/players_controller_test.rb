require 'test_helper'

class Players::PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @players_player = players_players(:one)
  end

  test "should get index" do
    get players_players_url
    assert_response :success
  end

  test "should get new" do
    get new_players_player_url
    assert_response :success
  end

  test "should create players_player" do
    assert_difference('Players::Player.count') do
      post players_players_url, params: { players_player: { name: @players_player.name } }
    end

    assert_redirected_to players_player_url(Players::Player.last)
  end

  test "should show players_player" do
    get players_player_url(@players_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_players_player_url(@players_player)
    assert_response :success
  end

  test "should update players_player" do
    patch players_player_url(@players_player), params: { players_player: { name: @players_player.name } }
    assert_redirected_to players_player_url(@players_player)
  end

  test "should destroy players_player" do
    assert_difference('Players::Player.count', -1) do
      delete players_player_url(@players_player)
    end

    assert_redirected_to players_players_url
  end
end
