module ApplicationHelper
  def session_links
    if user_signed_in?
      link_to('Sign out', destroy_user_session_path(method: :delete))
    else
      raw(
        link_to('Sign in', new_user_session_path) +
        ' or ' +
        link_to('Sign up', new_user_registration_path)
      )
    end
  end
end
