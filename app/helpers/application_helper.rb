module ApplicationHelper
  def format_date_for_text_field(the_date)
    return the_date.strftime('%d-%m-%Y')
  end

  def is_active_controller(controller_name)
      params[:controller] == controller_name ? "active" : nil
  end

  def is_active_action(action_name)
      params[:action] == action_name ? "active" : nil
  end
end
