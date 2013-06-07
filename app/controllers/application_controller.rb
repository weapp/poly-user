class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  def current_user
    if organization_signed_in?
      current_organization.user
    elsif person_signed_in?
      current_person.user
    else
      nil
    end
  end
end
