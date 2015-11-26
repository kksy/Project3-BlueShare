class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

   def logged_in?
     current_user != nil
   end

   def sendmail

     item = Item.find_by(id: params[:id])
     user = User.find_by(id: item.user_id)

    client = SendGrid::Client.new do |c|
       c.api_key = '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'
    end

    mail = SendGrid::Mail.new do |m|
    m.to = "#{user}"
    if logged_in?
      m.from = "#{current_user.email}"
    else
      m.from = "#{params[:mail]["email"]}"
    end
      m.subject = "#{item.title}"
      m.text = "#{params[:mail]["message"]}"
    end

    res = client.send(mail)
    puts res.code
    puts res.body
   end
end
