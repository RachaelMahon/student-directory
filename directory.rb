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
    cohort = gets.chomp.capitalize.to_sym
    cohort.empty? ? cohort = :November : cohort
    puts "Hobbies: "
    hobbies = gets.chomp
    hobbies.empty? ? hobbies = "None" : hobbies
    puts "Country of birth?: "
    country_of_birth = gets.chomp
    country_of_birth.empty? ? country_of_birth = "Unknown" : country_of_birth
    puts "Height: "
    height = gets.chomp
    height.empty? ? height = "Unknown" : height
  end
    end

    #students = students.sort_by {|k| k['cohort']}

    puts "What cohort would you like to print? If all press enter"
    # Couldn't get this to work - puts students.inject ([]) {|result, h| result << h unless result.include?(h); result}
    selection = gets.chomp

    # students.each do |key, value|
    #   if key =
    #  puts value.to_s
    #  end
    #end
   puts "The students of Unreal Academy".center(50)
   puts "-------------------------------------------------".center(50)

  idx = 0



  #if selection.empty?
    print_selection = []
  while idx < students.to_a.length
    print_selection << "#{idx+1}. #{students[idx][:name]} (#{students[idx][:cohort]} cohort). Hobbies include #{students[idx][:hobbies]}. Born in #{students [idx] [:country_of_birth]}. Height = #{students [idx][:height]}"
    idx += 1
  end

  #if selection.empty?
  #  print_selection = []
  #  correct_cohort = students.delete_if{ |k, v| v != selection}
  #  while idx < students.to_a.length
  #    print_selection << "#{idx+1}. #{correct_cohort[idx][:name]} (#{correct_cohort[idx][:cohort]} cohort). Hobbies include #{correct_cohort[idx][:hobbies]}. Born in #{correct_cohort[idx] [:country_of_birth]}. Height = #{correct_cohort[idx][:height]}"
  #    idx += 1
  #  end
#  end

  #else
  #  while idx < students.to_a.length
  #    while selection == students[keys[1]
      #student_selection = []
      #student_selection = students.select{|k, v| v == selection}.to_h
      #print_selection << "#{idx+1}. #{student_selection[idx][:name]} (#{student_selection[idx][:cohort]} cohort). Hobbies include #{student_selection[idx][:hobbies]}. Born in #{student_selection [idx] [:country_of_birth]}. Height = #{student_selection [idx][:height]}"
  #    print_selection << "#{idx+1}. #{students[idx][:name]} (#{students[idx][:cohort]} cohort). Hobbies include #{students[idx][:hobbies]}. Born in #{students [idx] [:country_of_birth]}. Height = #{students [idx][:height]}"
  #    idx += 1
  #  end
  #  end
   puts print_selection
end




input_students
