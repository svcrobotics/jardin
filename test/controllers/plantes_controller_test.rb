require "test_helper"

class PlantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plante = plantes(:one)
  end

  test "should get index" do
    get plantes_url
    assert_response :success
  end

  test "should get new" do
    get new_plante_url
    assert_response :success
  end

  test "should create plante" do
    assert_difference("Plante.count") do
      post plantes_url, params: { plante: { arrosage: @plante.arrosage, bouturage: @plante.bouturage, categorie: @plante.categorie, image_url: @plante.image_url, maladie: @plante.maladie, nom: @plante.nom, origine: @plante.origine, rempotage: @plante.rempotage, substrat: @plante.substrat, taille: @plante.taille, temperature: @plante.temperature } }
    end

    assert_redirected_to plante_url(Plante.last)
  end

  test "should show plante" do
    get plante_url(@plante)
    assert_response :success
  end

  test "should get edit" do
    get edit_plante_url(@plante)
    assert_response :success
  end

  test "should update plante" do
    patch plante_url(@plante), params: { plante: { arrosage: @plante.arrosage, bouturage: @plante.bouturage, categorie: @plante.categorie, image_url: @plante.image_url, maladie: @plante.maladie, nom: @plante.nom, origine: @plante.origine, rempotage: @plante.rempotage, substrat: @plante.substrat, taille: @plante.taille, temperature: @plante.temperature } }
    assert_redirected_to plante_url(@plante)
  end

  test "should destroy plante" do
    assert_difference("Plante.count", -1) do
      delete plante_url(@plante)
    end

    assert_redirected_to plantes_url
  end
end
