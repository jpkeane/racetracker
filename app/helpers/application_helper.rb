module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = 'RaceTracker'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  # Returns true (or supplied flag) if controller is active
  def active_controller?(controller_name, class_name = 'active')
    return unless params[:controller] == controller_name
    class_name.nil? ? 'active' : class_name
  end

  # Returns true (or supplied flag) if action is active
  def active_action?(action_name, class_name = 'active')
    return unless params[:action] == action_name
    class_name.nil? ? 'active' : class_name
  end
end
