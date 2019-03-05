module ApplicationHelper
  def user_avatar(user)
    if user.avatar?
      user.avatar.url
    else  
      asset_path('user.png')
    end  
  end

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end  
end
