def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end

  students
end



def print_header
    puts "The students of Villains Academy"
    puts "______________"
end

def print(students)
  puts "To print students with names beginning with a letter, type that letter"
  letter = gets.chomp
  less_than_12 = 0
  students.each do |student|
    if student[:name].length < 12
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    correct_initial += 1
  end
end
puts "You have selected #{less_than_12} students beginning with #{letter} of a possible #{students.count} students!"
end

def print_footer(students)
  puts "Overall we have #{students.count} great students"
end



students = input_students
print_header
print(students)
print_footer(students)
