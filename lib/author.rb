require './lib/book'

class Author < Book

  attr_reader :first_name,
              :last_name,
              :books

  def initialize(author_hash)
    @first_name = author_hash[:first_name]
    @last_name = author_hash[:last_name]
    @books = []
    super
    binding.pry
  end

  def add_book(book_title_string, book_publication_date)
    # @books << book_title_string
    # @books.inject([]) do |book_object, book_title|
      # if book_title == book_object.title  <--how to acquire this?
      #   book_object
      # end
    #end

    #1. need to match book_title_string to book object title and
    #return book object.
    #2. need to inherit Book class in order to access
    #methods and instance varibles. this is where
    #book.title resides.
  end

end
