module ApplicationHelper
  def current_user
    @current_user ||= current_adopter ? current_adopter : current_fundation ? current_fundation : nil
  end
end
