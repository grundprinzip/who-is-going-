class Application < Merb::Controller
  
  init_gettext "whoisgoing"
  
  before :set_locale

  def set_locale
    set_locale_by [:param, :session, :header], 'locale'
    session[:locale] = params[:locale] if params[:locale]
  end
  
  
end