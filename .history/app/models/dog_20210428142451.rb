class Dog < ApplicationRecord
    has_many :employees

    def to_s
        self.name + " " + self.breed + " " + self.age + " " + self.employees.map{|employee| employee.first_name}.join(", ")
    end

end
