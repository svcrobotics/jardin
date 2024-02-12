require "application_system_test_case"

class FamillesTest < ApplicationSystemTestCase
  setup do
    @famille = familles(:one)
  end

  test "visiting the index" do
    visit familles_url
    assert_selector "h1", text: "Familles"
  end

  test "should create famille" do
    visit familles_url
    click_on "New famille"

    fill_in "Arrosage", with: @famille.arrosage
    fill_in "Bouturage", with: @famille.bouturage
    fill_in "Categorie", with: @famille.categorie
    fill_in "Famille", with: @famille.famille
    fill_in "Maladie", with: @famille.maladie
    fill_in "Origine", with: @famille.origine
    fill_in "Rempotage", with: @famille.rempotage
    fill_in "Substrat", with: @famille.substrat
    fill_in "Taille", with: @famille.taille
    click_on "Create Famille"

    assert_text "Famille was successfully created"
    click_on "Back"
  end

  test "should update Famille" do
    visit famille_url(@famille)
    click_on "Edit this famille", match: :first

    fill_in "Arrosage", with: @famille.arrosage
    fill_in "Bouturage", with: @famille.bouturage
    fill_in "Categorie", with: @famille.categorie
    fill_in "Famille", with: @famille.famille
    fill_in "Maladie", with: @famille.maladie
    fill_in "Origine", with: @famille.origine
    fill_in "Rempotage", with: @famille.rempotage
    fill_in "Substrat", with: @famille.substrat
    fill_in "Taille", with: @famille.taille
    click_on "Update Famille"

    assert_text "Famille was successfully updated"
    click_on "Back"
  end

  test "should destroy Famille" do
    visit famille_url(@famille)
    click_on "Destroy this famille", match: :first

    assert_text "Famille was successfully destroyed"
  end
end
