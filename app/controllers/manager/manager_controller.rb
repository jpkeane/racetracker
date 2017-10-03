module Manager
  class ManagerController < ActionController::Base
    layout 'manager'
    protect_from_forgery with: :exception
  end
end
