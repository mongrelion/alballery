module ApplicationHelper
  def flash_messages
    content_tag :div, content_tag(:div, flash[:alert], class: 'alert') if flash[:alert]
    content_tag :div, content_tag(:div, flash[:error], class: 'alert alert-error') if flash[:error]
  end

  def session_links
    if user_signed_in?
      raw(
        current_user.email +
        ' | ' +
        link_to('Sign out', destroy_user_session_path, method: :delete)
      )
    else
      raw(
        link_to('Sign in', new_user_session_path) +
        ' or ' +
        link_to('Sign up', new_user_registration_path)
      )
    end
  end
end
