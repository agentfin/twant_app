module ApplicationHelper
  
  # Returns the full title or crops if no specific title provided
  def full_title(page_title)
    base_title = "TwantApp"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
