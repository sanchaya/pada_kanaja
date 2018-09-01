require "application_system_test_case"

class PadasTest < ApplicationSystemTestCase
  setup do
    @pada = padas(:one)
  end

  test "visiting the index" do
    visit padas_url
    assert_selector "h1", text: "Padas"
  end

  test "creating a Pada" do
    visit padas_url
    click_on "New Pada"

    fill_in "Dictionary", with: @pada.dictionary_id
    fill_in "Language", with: @pada.language_id
    fill_in "Meaning", with: @pada.meaning
    fill_in "Meaning Language", with: @pada.meaning_language_id
    fill_in "Pos", with: @pada.pos
    fill_in "Word", with: @pada.word
    click_on "Create Pada"

    assert_text "Pada was successfully created"
    click_on "Back"
  end

  test "updating a Pada" do
    visit padas_url
    click_on "Edit", match: :first

    fill_in "Dictionary", with: @pada.dictionary_id
    fill_in "Language", with: @pada.language_id
    fill_in "Meaning", with: @pada.meaning
    fill_in "Meaning Language", with: @pada.meaning_language_id
    fill_in "Pos", with: @pada.pos
    fill_in "Word", with: @pada.word
    click_on "Update Pada"

    assert_text "Pada was successfully updated"
    click_on "Back"
  end

  test "destroying a Pada" do
    visit padas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pada was successfully destroyed"
  end
end
