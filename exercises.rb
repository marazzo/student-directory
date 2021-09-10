students = [
    {name: "Dr. Hannibal Lecter",cohort: :november},
    {name: "Darth Vader",cohort: :november},
    {name: "Nurse Ratched",cohort: :november},
    {name: "Michael Corleone",cohort: :november},
    {name: "Alex DeLarge", cohort: :november},
    {name: "The Wicked Witch of the West", cohort: :november},
    {name: "Terminator", cohort: :november},
    {name: "Freddy Krueger", cohort: :november},
    {name: "The Joker", cohort: :november},
    {name: "Joffrey Baratheon", cohort: :november},
   {name: "Norman Bates",cohort: :november}
] 
def print_header
  puts "The students of Villians Academy"
  puts "--------------------------------" 
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  name = gets.chomp
  puts "Please enter the cohort name"
  cohort = gets.chomp
  puts "To finish, just hit return twice"
  students = []
  while !name.empty? do
    if cohort.empty? 
      cohort = :default
    end
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

students = input_students
print_header
print(students)
print_footer(students)