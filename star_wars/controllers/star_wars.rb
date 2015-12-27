get '/' do
  @films = Film.all
  erb :front
end

get '/films' do
  @films = Film.all
  erb :index
end

get '/films/:id_no' do
  @films = [Film.find_by(id: params[:id_no])]
  erb :index_detail
end

post '/add_film' do
end

# fix cast table problem OR
# add comments