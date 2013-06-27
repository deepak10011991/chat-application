module ApplicationHelper

  def is_current_user
    self.user_id == current_user.id ? true : false
  end

end
