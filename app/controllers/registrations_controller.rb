class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if session[:last_booking_id]
      booking_path(session[:last_booking_id])
    else
      root_path
    end
  end


end
