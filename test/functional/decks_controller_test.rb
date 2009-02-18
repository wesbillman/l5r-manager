require 'test_helper'

class DecksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deck" do
    assert_difference('Deck.count') do
      post :create, :deck => { }
    end

    assert_redirected_to deck_path(assigns(:deck))
  end

  test "should show deck" do
    get :show, :id => decks(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => decks(:one).id
    assert_response :success
  end

  test "should update deck" do
    put :update, :id => decks(:one).id, :deck => { }
    assert_redirected_to deck_path(assigns(:deck))
  end

  test "should destroy deck" do
    assert_difference('Deck.count', -1) do
      delete :destroy, :id => decks(:one).id
    end

    assert_redirected_to decks_path
  end
end
