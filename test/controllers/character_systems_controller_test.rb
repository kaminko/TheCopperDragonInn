require 'test_helper'

class CharacterSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_system = character_systems(:one)
  end

  test "should get index" do
    get character_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_character_system_url
    assert_response :success
  end

  test "should create character_system" do
    assert_difference('CharacterSystem.count') do
      post character_systems_url, params: { character_system: { characters: @character_system.characters, system: @character_system.system } }
    end

    assert_redirected_to character_system_url(CharacterSystem.last)
  end

  test "should show character_system" do
    get character_system_url(@character_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_system_url(@character_system)
    assert_response :success
  end

  test "should update character_system" do
    patch character_system_url(@character_system), params: { character_system: { characters: @character_system.characters, system: @character_system.system } }
    assert_redirected_to character_system_url(@character_system)
  end

  test "should destroy character_system" do
    assert_difference('CharacterSystem.count', -1) do
      delete character_system_url(@character_system)
    end

    assert_redirected_to character_systems_url
  end
end
