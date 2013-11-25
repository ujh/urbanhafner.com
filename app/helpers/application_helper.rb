module ApplicationHelper

  def title
    t = "Urban Hafner - Ruby on Rails and JavaScript freelance developer"
    name = pages.invert[request.path]
    t = "#{name} | #{t}" if name.present?
    t
  end

  def copyright_years
    start = 2012
    this_year = Date.today.year
    if this_year > start
      "#{start} - #{this_year}"
    else
      "#{start}"
    end
  end

  def menu_item(name, link=pages[name])
    l = link_to_unless_current(name, link) do
      link_to name, link, :class => 'active'
    end
    "<li>#{l}</li>".html_safe
  end

  def pages
    {
      "Home"     => root_path,
      "Projects" => projects_path,
      "Contact"  => contact_path,
      "Blog"     => blog_index_path
    }
  end
end
