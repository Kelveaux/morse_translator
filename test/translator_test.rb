# YOUR TESTS GO IN HERE!
require "minitest/autorun"
require "minitest/pride"
require "./lib/translator"

class TranslatorTest < Minitest::Test

  def test_it_exists
  translator = Translate.new

  assert_instance_of Translate, translator
  end

  def test_dictionary_returns_keys
    translator = Translate.new

    translator.eng_to_morse("Hello World")

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
  end

end
