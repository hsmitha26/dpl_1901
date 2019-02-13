require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test

  def setup
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    @jemisin_book1 = Book.new({author_first_name: "N.K.", author_last_name: "Jemisin", title: "The Fifth Season", publication_date: "2015"})
  end

  def test_it_exists
    assert_instance_of Author, @nk_jemisin
  end

  def test_it_has_attributes
    assert_equal "N.K.", @nk_jemisin.first_name
    assert_equal "Jemisin", @nk_jemisin.last_name
  end

  def test_starts_with_no_books
    assert_equal [], @nk_jemisin.books
  end

  def test_can_add_book_objects
    @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    if @jemisin_book1.title == "The Fifth Season"
    # binding.pry
      assert_equal [@jemisin_book1], @nk_jemisin.books
    end
  end

end
