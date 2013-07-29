module ApplicationHelper
  def friendly_datetime(dt)
    dt.strftime("%Y/%b/%-d %l:%M %p %Z")
  end

  def fix_url(url)
    url.starts_with?("http://") ? url : "http://#{url}"
  end


end
