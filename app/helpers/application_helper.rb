module ApplicationHelper

  def copyright_years
    start = 2012
    this_year = Date.today.year
    if this_year > start
      "#{start} - #{this_year}"
    else
      "#{start}"
    end
  end

  def menu_item(name, link)
    l = link_to_unless_current(name, link) do
      link_to name, link, :class => 'active'
    end
    "<li>#{l}</li>".html_safe
  end
end
