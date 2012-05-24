module ApplicationHelper

  def flash_messages
    {
      :alert   => 'alert',
      :notice  => 'alert alert-success',
      :error   => 'alert alert-error',
      :success => 'alert alert-success',
      :info    => 'alert alert-info'
    }.map do |key, val|
      content_tag :div, flash[key], :class => val if flash[key]
    end.join.html_safe
  end

  def session_links
    if user_signed_in?
      raw(
        current_user.email +
        ' | ' +
        link_to('Sign out', destroy_user_session_path)
      )
    else
      raw(
        link_to('Sign in', new_user_session_path) +
        ' or ' +
        link_to('Sign up', new_user_registration_path)
      )
    end
  end

  def error_messages_for(object)
    if object.errors.any?
      content_tag :div, :id => 'error_explanation' do
        raw(
          content_tag(:h2, "#{pluralize(object.errors.count, "error")} prohibited this ticket from being saved:") +
          content_tag(:ul) { object.errors.full_messages.map { |m| content_tag(:li, m) }.join.html_safe }
        )
      end
    end
  end
end
