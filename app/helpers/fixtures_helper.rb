module FixturesHelper
  def heat_desc(heat, title = nil)
    if title
      "Heat #{heat} (#{title})"
    else
      "Heat #{heat}"
    end
  end

  def type_desc(type)
    case type
    when 'normal'
      'Race'
    when 'dd'
      'Destruction Derby'
    when 'figure-of-8'
      'Figure of 8'
    when 'showdown'
      'Showdown'
    end
  end
end
