module Manager
  class ManagerController < ActionController::Base
    layout 'manager'
    before_action :authenticate_user!

    protect_from_forgery with: :exception
  end
end
