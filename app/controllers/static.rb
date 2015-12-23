get '/' do
  erb :"static/index"
end

post '/urls' do
	@Url = Url.create(long_url: params[:long_url])
	# @url.save
	redirect '/'
end

# get '/:short_url' do
# 	p params[:short_url] # lala
# end

get'/lala' do
	erb :'static/lala'
end