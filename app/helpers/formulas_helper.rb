module FormulasHelper
  def age_range(min_age, max_age)
    age_class = if max_age && (min_age < 16) && (max_age < 16)
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

  def formula_fixture_desc(ff)
    if ff.title
      "#{ff.fixture.short_date} - #{ff.fixture.name} (#{ff.title})"
    else
      "#{ff.fixture.short_date} - #{ff.fixture.name}"
    end
  end
end
