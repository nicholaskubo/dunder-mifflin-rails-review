class Dog < ApplicationRecord
    has_many :dogs

    def to_s
        self.name + " " + self.breed + " " + self.age
    end

end
