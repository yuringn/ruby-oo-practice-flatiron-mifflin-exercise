class Employee
    @@all = []
    attr_accessor :name, :manager
    attr_reader :salary

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        a = []
        Employee.all.select do |employee|
             if employee.salary > num
               a << employee.name
             end
        end
        a
    end

    def self.find_by_department(department)
        self.all.find do |employee|
            return employee.name if employee.manager.department == department
        end
    end

    # def tax_bracket
    # end

end
