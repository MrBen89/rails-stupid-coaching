require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end
  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end
  test "asking a question yields a different grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Are you a robot?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end
  test "saying you are going to work yields a happy response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    take_screenshot
    click_on "Ask"

    assert_text "Great!"
  end
end
