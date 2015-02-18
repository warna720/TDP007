require_relative "./uppg4"
require "test/unit"

class TestUppg4 < Test::Unit::TestCase

    def test_find_it
        assert_equal(
            find_it(["apelsin", "banan", "citron"]) { |a,b| a.length > b.length }, "apelsin")
        assert_equal(
            find_it(["apelsin", "banan", "citron"]) { |a,b| a.length < b.length }, "banan")
        assert_equal(
            find_it(["apelsin", "banana", "citron"]) { |a,b| a.length < b.length }, "citron")
        assert_equal(
            find_it(["apelsin", "banana", "citron"]) { |a,b| a.length <= b.length }, "banana")

        assert_not_equal(
            find_it(["apelsin", "bananana", "citron"]) { |a,b| a.length > b.length }, "apelsin")
        assert_not_equal(
            find_it(["apelsin", "bananana", "citron123"]) { |a,b| a.length > b.length }, "apelsin")
        assert_not_equal(
            find_it(["apelsin", "bananana", "citron123"]) { |a,b| a.length > b.length }, "bananana")

        assert_operator(
            find_it(["apelsin", "banananana", "citron123"]) { |a,b| a.length > b.length }.length, :>, "apelsin".length)
        assert_operator(
            find_it(["apelsin", "banananana", "citron123"]) { |a,b| a.length > b.length }.length, :>, "citron123".length)
    end
end
