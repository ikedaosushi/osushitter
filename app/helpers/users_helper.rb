module UsersHelper
  def gravator_for(user)
    gravator_id = Digest::MD5::hexdigest(user.email.downcase)
    grabator_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
