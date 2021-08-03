module ProfilesHelper
  def format_date(date)
    date.to_formatted_s(:long)[0..-7]
  end
end
