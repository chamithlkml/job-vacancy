JobVacancy::App.controllers :page do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :about, :map => '/about' do
    render :erb, 'about'
  end

  get :contact, :map => '/contact' do 
    render :erb, 'contact'
  end

  get :home, :map => '/' do 
    render :erb, 'home'
  end

end
