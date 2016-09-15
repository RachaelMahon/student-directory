
students = [

  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "The Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
 ]

def print_header
    puts "The students of Villains Academy"
    puts "______________"
end

def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(name)
  puts "Overall, we have #{name.count} great students"
end

print_header
print(students)
print_footer(students)
