defmodule App.Livros do
  @spec search_livro(any, any) :: any
  def search_livro(livros,livro) do
    Enum.find(livros, nil, fn lvr -> lvr == livro end)
  end

  @spec search_books_by_autor(any, any) :: [any]
  def search_books_by_autor(livros,author) do
    Enum.filter(livros, fn livro -> livro.autor == author end)
  end
end
