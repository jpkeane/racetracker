module FixturesHelper
  def heat_desc(heat, title = nil)
    if title
      "Heat #{heat} (#{title})"
    else
      "Heat #{heat}"
    end
  end

  def type_desc(type)
    if type == 'normal'
      'Race'
    elsif type == 'dd'
      'Destruction Derby'
    end
  end
end
