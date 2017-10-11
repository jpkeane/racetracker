module TracksHelper
  def formatted_length(length, unit)
    length = length.round
    "#{length}#{unit}"
  end
end
