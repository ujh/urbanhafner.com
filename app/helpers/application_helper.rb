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
end
