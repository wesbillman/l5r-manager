require 'test_helper'

class DeckCardsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deck_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deck_card" do
    assert_difference('DeckCard.count') do
      post :create, :deck_card => { }
    end

    assert_redirected_to deck_card_path(assigns(:deck_card))
  end

  test "should show deck_card" do
    get :show, :id => deck_cards(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => deck_cards(:one).id
    assert_response :success
  end

  test "should update deck_card" do
    put :update, :id => deck_cards(:one).id, :deck_card => { }
    assert_redirected_to deck_card_path(assigns(:deck_card))
  end

  test "should destroy deck_card" do
    assert_difference('DeckCard.count', -1) do
      delete :destroy, :id => deck_cards(:one).id
    end

    assert_redirected_to deck_cards_path
  end
end
