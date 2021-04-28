class Dog < ApplicationRecord
    has_many :dogs

    def to_s
        self.name + " " + self.breed + " " + self.age + " " + self.employees.map(|employee| employee.name)
    end

end
