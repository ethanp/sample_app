module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"

    # return an image_tag for the gravatar
    # :alt and :class are attributes to be put on the tag
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
