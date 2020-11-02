#here
class BooksController < ApplicationController
  # GET: /books
  #list all books
  get "/books" do
    erb :"/books/index.html"
  end

  # GET: /books/new
  get "/books/new" do
    erb :"/books/new.html"
  end

  # POST: /books
  post "/books" do
    #create book
    redirect "/books"
    # redirect "/books/#{book.id}"
  end

  # GET: /books/5
  

  # GET: /books/5/edit
  # get "/books/:id/edit" do
  #   erb :"/books/edit.html"
  # end

  # # PATCH: /books/5
  # patch "/books/:id" do
  #   redirect "/books/:id"
  # end

  # # DELETE: /books/5/delete
  # delete "/books/:id/delete" do
  #   redirect "/books"
  # end
end
