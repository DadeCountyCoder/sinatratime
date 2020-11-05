# Manages book-based routing, helpers, sessions
class BooksController < ApplicationController
  get '/books/new' do
    @error = params[:error]
    erb :'/books/new.html'
  end

  post '/books' do
    redirect '/books/new?error=Invalid form submission, please try again:' if params.values.any?(&:empty?) || book.find_by(name: params[:name])
    book = Book.create(
      name: params[:name]
    )
    redirect "/books/#{book.id}"
  end

  get '/books/:id' do
    @book = Book.find_by(id: params[:id])
    redirect :'books/new' unless @book
    @error = params[:error]
    user_ids = @books.reviews.map { |review| review[:user_id] }
    @users = User.all.select { |user| user_ids.include?(user.id) }
    erb :'/books/show.html'
  end

  get '/books' do
    @books = Book.all
    erb :'/books/index.html'
  end
end
