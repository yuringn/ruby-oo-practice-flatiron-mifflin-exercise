require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
#managers
lori = Manager.new("Lori", "Event", 50)
jen = Manager.new("Jen", "Sales", 45)

#employees
yuri = Employee.new("Yuri", 50.000, lori)
wilton = Employee.new("Wilton", 60.000, lori)
kayla = Employee.new("Kayla", 52.000, jen)
koki = Employee.new("Koki", 45.000, jen)
lola = Employee.new("Lola", 55.000, jen)

#hire_employee(name, salary)
lori.hire_employee("Franck", 70.000)

binding.pry
puts "done"
