class ApplicationController < ActionController::Base

  before_action :set_local_language
  
  def set_local_language
    I18n.locale = 'kn'
  end
end
