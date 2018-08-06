class ApplicationController < ActionController::API
  include Knock::Authenticable

  def has_permission?(user)
    true if current_user.id == user.id
  end
end
