require 'test_helper'

class PadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pada = padas(:one)
  end

  test "should get index" do
    get padas_url
    assert_response :success
  end

  test "should get new" do
    get new_pada_url
    assert_response :success
  end

  test "should create pada" do
    assert_difference('Pada.count') do
      post padas_url, params: { pada: { dictionary_id: @pada.dictionary_id, language_id: @pada.language_id, meaning: @pada.meaning, meaning_language_id: @pada.meaning_language_id, pos: @pada.pos, word: @pada.word } }
    end

    assert_redirected_to pada_url(Pada.last)
  end

  test "should show pada" do
    get pada_url(@pada)
    assert_response :success
  end

  test "should get edit" do
    get edit_pada_url(@pada)
    assert_response :success
  end

  test "should update pada" do
    patch pada_url(@pada), params: { pada: { dictionary_id: @pada.dictionary_id, language_id: @pada.language_id, meaning: @pada.meaning, meaning_language_id: @pada.meaning_language_id, pos: @pada.pos, word: @pada.word } }
    assert_redirected_to pada_url(@pada)
  end

  test "should destroy pada" do
    assert_difference('Pada.count', -1) do
      delete pada_url(@pada)
    end

    assert_redirected_to padas_url
  end
end
