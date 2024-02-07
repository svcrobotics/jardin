require "application_system_test_case"

class PlantesTest < ApplicationSystemTestCase
  setup do
    @plante = plantes(:one)
  end

  test "visiting the index" do
    visit plantes_url
    assert_selector "h1", text: "Plantes"
  end

  test "should create plante" do
    visit plantes_url
    click_on "New plante"

    fill_in "Arrosage", with: @plante.arrosage
    fill_in "Bouturage", with: @plante.bouturage
    fill_in "Categorie", with: @plante.categorie
    fill_in "Image url", with: @plante.image_url
    fill_in "Maladie", with: @plante.maladie
    fill_in "Nom", with: @plante.nom
    fill_in "Origine", with: @plante.origine
    fill_in "Rempotage", with: @plante.rempotage
    fill_in "Substrat", with: @plante.substrat
    fill_in "Taille", with: @plante.taille
    fill_in "Temperature", with: @plante.temperature
    click_on "Create Plante"

    assert_text "Plante was successfully created"
    click_on "Back"
  end

  test "should update Plante" do
    visit plante_url(@plante)
    click_on "Edit this plante", match: :first

    fill_in "Arrosage", with: @plante.arrosage
    fill_in "Bouturage", with: @plante.bouturage
    fill_in "Categorie", with: @plante.categorie
    fill_in "Image url", with: @plante.image_url
    fill_in "Maladie", with: @plante.maladie
    fill_in "Nom", with: @plante.nom
    fill_in "Origine", with: @plante.origine
    fill_in "Rempotage", with: @plante.rempotage
    fill_in "Substrat", with: @plante.substrat
    fill_in "Taille", with: @plante.taille
    fill_in "Temperature", with: @plante.temperature
    click_on "Update Plante"

    assert_text "Plante was successfully updated"
    click_on "Back"
  end

  test "should destroy Plante" do
    visit plante_url(@plante)
    click_on "Destroy this plante", match: :first

    assert_text "Plante was successfully destroyed"
  end
end
