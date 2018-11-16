def difference(birthday)
  days = birthday - Date.parse(Time.now.to_s)
  days.to_i
end

def calculation(birthday_string)
  array_birthday = birthday_string.split("-")
  birthday = Date.new(Time.now.year, array_birthday[1].to_i, array_birthday[2].to_i)
  if difference(birthday) < 0
    birthday = Date.new(Time.now.year+1, array_birthday[1].to_i, array_birthday[2].to_i)
    return days_difference = difference(birthday)
  end
  return days_difference = difference(birthday)
end
