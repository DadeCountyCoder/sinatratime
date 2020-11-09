# Manages book-based routing, helpers, sessions
class BooksController < ApplicationController
  get '/poems' do 
      redirect_if_not_logged_in
      @book = Book.all
      erb :index
  end 
  
  get '/books/new' do
      redirect_if_not_logged_in
      erb :new
  end
  post '/books' do
      redirect_if_not_logged_in
      @book = current_user.books.build(book_params)
      book.user = User.find(session[:user_id])
      if @book.save
      erb :show
      else 
        book_params.nil? || book_params.empty?
        @errors = ["Each field must be filled in to create a book. Must have a Title, Description, and Content!"]
        erb :failure
       end
  end
  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :show
  end
  get '/books/:id/edit' do
    redirect_if_not_logged_in 
     if current_user
    @book = current_user.poems.find_by(id: params[:id])
    if @book
      erb :edit
     else 
      redirect '/'
     end
    else 
    redirect '/'
     end
  end
  
    patch '/books/:id' do
      redirect_if_not_logged_in  
      @book = current_author.books.find_by(id: params[:id])
      @book.title = params[:title]
      @book.description = params[:description]
      @book.content = params[:content]
      @book.save
      erb :show
  end
    delete '/books/:id' do
      redirect_if_not_logged_in 
     if current_user
       @book = current_user.books.find_by(id: params[:id])
      if @book
        @book.delete
        redirect '/profile'
     else 
      redirect '/'
     end
    else redirect '/'
     end

    end	
    private

    def book_params
      { title: params[:title], description: params[:description], content: params[:content]}
    end
end