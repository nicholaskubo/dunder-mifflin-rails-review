class Employee < ApplicationRecord
    belongs_to :dog
    
    def to_s
     
        self.first_name + " " + self.last_name + ", " + self.alias + ", " + self?.title + ", " + self.office 
    end
    
end
