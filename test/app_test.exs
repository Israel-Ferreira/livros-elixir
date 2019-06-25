defmodule AppTest do
  use ExUnit.Case
  doctest App


  test "greets the world" do
    assert App.hello() == :world
  end

  test "Should be  return a book in list" do
    books = [%{nome: "Cosmos",autor: "Carl Sagan"},%{nome: "Blade Runner",autor: "Phillip K. Dick"}]
    book =  %{nome: "Blade Runner",autor: "Phillip K. Dick"}
    assert App.Livros.search_livro(books, book) == book
  end

  test "Should be a return a book list  to author" do
    books = [%{nome: "Cosmos",autor: "Carl Sagan"},%{nome: "Blade Runner",autor: "Phillip K. Dick"}]
    expected = [%{nome: "Cosmos",autor: "Carl Sagan"}]
    assert App.Livros.search_books_by_autor(books, "Carl Sagan") == expected
  end
end
