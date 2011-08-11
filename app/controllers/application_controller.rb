class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user! , :except => [ :show, :index ]
  before_filter :set_time_zone

  def set_time_zone
    Time.zone = "Taipei"
  end
end
