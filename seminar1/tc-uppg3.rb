require_relative "./uppg3"
require "test/unit"

class TestUppg3 < Test::Unit::TestCase

    def test_longest_string
        assert_equal(
            longest_string(["apelsin", "banan", "citron"]), "apelsin")
        assert_equal(
            longest_string(["apelsin", "bananan", "citron"]), "apelsin")
        assert_equal(
            longest_string(["apelsin", "bananana", "citron123"]), "citron123")

        assert_not_equal(
            longest_string(["apelsin", "bananana", "citron"]), "apelsin")
        assert_not_equal(
            longest_string(["apelsin", "bananana", "citron123"]), "apelsin")
        assert_not_equal(
            longest_string(["apelsin", "bananana", "citron123"]), "bananana")


        assert_operator(
            longest_string(["apelsin", "banananana", "citron123"]).length, :>, "apelsin".length)
        assert_operator(
            longest_string(["apelsin", "banananana", "citron123"]).length, :>, "citron123".length)
    end
end
