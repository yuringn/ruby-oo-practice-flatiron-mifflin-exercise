class Manager
    @@all = []
    attr_accessor :manager_name, :department
    attr_reader :age

    def initialize(name, department, age)
        @manager_name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        a = Employee.all.select do |employee|    
            employee.manager == self     
        end
        a.map do |empl|
            empl.name
        end
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        total_age = self.all.map {|manager| manager.age}.sum
        age_length = self.all.length
        (total_age/age_length).to_f
    end



    # def self.age
    #     Manager.all.map do |manager|
    #       manager.age
    #    end
    # end
    # def self.average_age
    #      (self.age.sum / self.age.size).to_f
    # end
end
