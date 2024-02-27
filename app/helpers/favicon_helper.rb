module FaviconHelper
  def favicon_image_tag(domain, **keyword_args)
    image_tag google_favicon_url(domain), **keyword_args
  end

  def google_favicon_url(domain)
    "https://www.google.com/s2/favicons?domain=#{domain}"
  end
end
