module ApplicationHelper
  def isActive(controller, action = nil)
    if action == nil
      if params[:controller] == controller
        'active'
      elsif controller.include? params[:controller]
        'active'
      end
    elsif params[:controller] == controller && params[:action] == action
      'active'
    elsif params[:controller] == controller && (action.include? params[:action])
      'active'
    end
  end

end
