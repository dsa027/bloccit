module TopicsHelper
  def user_is_authorized_for_topics?
    current_user && current_user.admin?
  end
  def user_is_signed_in_and_admin?
    current_user && current_user.admin?
  end
end
