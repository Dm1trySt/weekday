# Сохраняем путь до папки, где хранится программа
current_path = File.dirname(__FILE__ )

# Открываем файл
holidays_file = File.new(current_path + "/data/holidays.txt", "r:UTF-8")

# Присваиваем все значения в файл holidays
holidays = holidays_file.readlines

# Закрываем файл
holidays_file.close

data = Time.new
# День и месяц
day = data.strftime("%d.%m")
# Год
year = data.strftime(".%Y")

puts "Текущее время : #{day}#{year}"

# .wday - возвращает число соответствующее определенному дню недели
case data.wday
when 0
  puts "Воскресенье"
when 1
  puts "Понедельник"
when 2
  puts "Вторник"
when 3
  puts "Среда"
when 4
  puts "Четверг"
when 5
  puts "Пятница"
when 6
  puts "Суббота"
end


for element in holidays do
  element.chomp!
end

# Проверка, выходной ли сегодня
if (data.wday == 0 || data.wday == 6)
  puts "Сегодня выходной!"
  # Проверка, праздник ли сегодня
elsif  holidays.include?(day)
  puts "Сегодня государственный праздник'"
else
  puts "Сегодня будний день, за работу!"
end
