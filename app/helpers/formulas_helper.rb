module FormulasHelper
  def age_range(min_age, max_age)
    age_class = if min_age < 16
                  'Junior'
                else
                  'Senior'
                end

    if max_age
      "#{age_class} - #{min_age} - #{max_age}"
    else
      "#{age_class} - #{min_age} +"
    end
  end
end
