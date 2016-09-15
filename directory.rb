
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
# and then prints them
students.each do |student|
  puts student
end

# finally, we print the total
print "Overall, we have #{students.count} great students"
