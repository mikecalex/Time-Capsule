require 'pry'
timeCapsule = []

puts "Hello, what's your name?"
name = gets.chomp

puts "What would you like to add the time capsule?"
item = gets.chomp
puts "How many of that item would you like to add?"
amount = gets.chomp
timeCapsule << [item, amount]

while true
  puts "Would you like to add anything else to the time capsule? (type 'Done' if finished)"
  item = gets.chomp
  if item != 'done'
    puts "How many of that item would you like to add?"
    amount = gets.chomp
    timeCapsule << [item, amount]
  else
    break
  end
end

puts "\n#{name}, here's your time capsule list! \n =========="

timeCapsule.each do |item, count|
  print ' * '
  puts "#{item} (#{count})"
  binding.pry
end
