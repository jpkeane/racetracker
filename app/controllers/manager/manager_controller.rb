module Manager
  class ManagerController < ActionController::Base
    layout 'manager'
    before_action :authenticate_staff!

    protect_from_forgery with: :exception
  end
end
