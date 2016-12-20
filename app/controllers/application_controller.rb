class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  after_filter :store_location

def store_location
  # store last url - this is needed for post-login redirect to whatever the user last visited.
  return unless request.get?
  if (request.path != "/users/sign_in" &&
      request.path != "/users/sign_up" &&
      request.path != "/users/password/new" &&
      request.path != "/users/password/edit" &&
      request.path != "/users/confirmation" &&
      request.path != "/users/sign_out" &&
      !request.xhr?) # don't store ajax calls
    session[:previous_url] = request.fullpath
  end
end

def after_sign_in_path_for(resource)
  session[:previous_url]
end

  def ab (parame)

    if(session[:lan] == nil)
      session[:lan] = "en"
    elsif parame != nil
			session[:lan] = params[:lan]
	   end
end

helper_method :ab

def set_header(p_type, filename)
  case p_type
    when 'xls'
     headers['Content-Type'] = "application/vnd.ms-excel; charset=UTF-8'"
     headers['Content-Disposition'] = "attachment; filename=\"#{filename}\""
     headers['Cache-Control'] = ''

    when 'msword'
     headers['Content-Type'] = "application/vnd.ms-word; charset=UTF-8"
     headers['Content-Disposition'] = "attachment; filename=\"#{filename}\""
     headers['Cache-Control'] = ''

   end
 end

end
