require "test_helper"

class FamillesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @famille = familles(:one)
  end

  test "should get index" do
    get familles_url
    assert_response :success
  end

  test "should get new" do
    get new_famille_url
    assert_response :success
  end

  test "should create famille" do
    assert_difference("Famille.count") do
      post familles_url, params: { famille: { arrosage: @famille.arrosage, bouturage: @famille.bouturage, categorie: @famille.categorie, famille: @famille.famille, maladie: @famille.maladie, origine: @famille.origine, rempotage: @famille.rempotage, substrat: @famille.substrat, taille: @famille.taille } }
    end

    assert_redirected_to famille_url(Famille.last)
  end

  test "should show famille" do
    get famille_url(@famille)
    assert_response :success
  end

  test "should get edit" do
    get edit_famille_url(@famille)
    assert_response :success
  end

  test "should update famille" do
    patch famille_url(@famille), params: { famille: { arrosage: @famille.arrosage, bouturage: @famille.bouturage, categorie: @famille.categorie, famille: @famille.famille, maladie: @famille.maladie, origine: @famille.origine, rempotage: @famille.rempotage, substrat: @famille.substrat, taille: @famille.taille } }
    assert_redirected_to famille_url(@famille)
  end

  test "should destroy famille" do
    assert_difference("Famille.count", -1) do
      delete famille_url(@famille)
    end

    assert_redirected_to familles_url
  end
end
