def input_students

  puts "Please enter some details about the student"
  puts "To finish, hit return twice"
  puts "Student name?:"
  name = gets.chomp
  puts "Cohort: "
  cohort = gets.chomp
  puts "Hobbies?: "
  hobbies = gets.chomp
  puts "Country of birth?:"
  country_of_birth = gets.chomp
  puts "Height?:"
  height = gets.chomp


  students = []
  while !name.empty? do
  students << {name: name, cohort: cohort, hobbies: hobbies, country_of_birth: country_of_birth, height: height}
  if students.to_a.count == 1
      puts "You have entered #{students.count} student!"
    elsif students.count > 1
      puts "You have entered #{students.count} students!"
    end
  puts "Please add more or press return twice to finish"
  puts "Name: "
  name = gets.chomp
  if !name.empty?
    puts "Cohort: "
    cohort = gets.chomp
    puts "Hobbies: "
    hobbies = gets.chomp
    puts "Country of birth?: "
    country_of_birth = gets.chomp
    puts "Height: "
    height = gets.chomp
  end
    end

   puts "The students of Unreal Academy".center(50)
   puts "-------------------------------------------------".center(50)

  idx = 0
  while idx < students.to_a.length
    puts "#{idx+1}. #{students[idx][:name]} (#{students[idx][:cohort]} cohort). Hobbies include #{students[idx][:hobbies]}. Born in #{students [idx] [:country_of_birth]}. Height = #{students [idx][:height]}"
    idx += 1

end
end

input_students
