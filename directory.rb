def input_students

  puts "Please enter some details about the student"
  puts "To finish, hit return twice"
  puts "Student name?:"
  name = gets.chomp
  unless !name.empty? do
  puts "Hobbies?: "
  hobbies = gets.chomp
  puts "Country of birth?:"
  country_of_birth = gets.chomp
  puts "Height?:"
  height = gets.chomp


  students = []
  students << {name: name, cohort: :november, hobbies: hobbies, country_of_birth: country_of_birth, height: height}
  end
end
end




def print_header
    puts "The students of Villains Academy"
    puts "______________"
end

def print (students)
  index = 0
  while index < students.length
    puts "#{index+1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
    index += 1
    end
end



def print_footer(students)
  if students.count = 1
    puts "Overall we have #{students.count} great student"
  else
  puts "Overall we have #{students.count} great students"
end
end


students = input_students
print_header
print(students)
print_footer(students)
