# вывести вопрос "какой файл показать?"
puts "Какой файл вам показать? (введите номер)"

files = Dir.glob("data/*.txt")
result = ARGV[0]

# Вывести список файлов:
files.each_with_index do |files, index|
  puts "#{index}: #{files}"
end

# ввод номера/индекса с указанием файла
user_input = gets.chomp.to_i

# вывод результата
result = File.new(files[user_input], 'r:UTF-8')

result.each do |line|
  puts line
end

result.close
puts "Я содержимое файла #{files[user_input].to_s}"


