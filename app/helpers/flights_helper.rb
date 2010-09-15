module FlightsHelper
  def german_date(date)
    date.strftime('%d.%m.%Y %H:%M')
  end
end
